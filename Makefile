ARCHS = x86 x86-64 aarch64 arm m68k mips mips64 powerpc64 riscv64 s390x sparc64
FAST_ARCHS = x86 x86-64 aarch64
COMPILERS = gcc clang
X86_ARCHS = x86 x86-64
NON_X86_ARCHS = $(filter-out $(X86_ARCHS),$(ARCHS))
SYNTAXES = intel att

.PHONY: all fast patch triage triage-all triage-patch preprocess preprocess-all clean docker-all docker-fast docker-build docker-patch docker-preprocess docker-preprocess-all docker-preprocess-cross docker-triage docker-triage-all docker-triage-patch $(ARCHS) $(addprefix patch-,$(ARCHS)) x86_intel x86-64_intel patch-x86_intel patch-x86-64_intel

all: $(ARCHS)

fast: $(FAST_ARCHS)

.DEFAULT_GOAL := fast

COMPILER_OPT ?=

# Run ASymProbe for each architecture
$(ARCHS):
	$(if $(filter $@,$(X86_ARCHS)),$(foreach syntax,$(SYNTAXES),python3 asymprobe.py $@ --syntax $(syntax) $(COMPILER_OPT);),python3 asymprobe.py $@ $(COMPILER_OPT))

x86_intel:
	python3 asymprobe.py x86 --syntax intel $(COMPILER_OPT)

x86-64_intel:
	python3 asymprobe.py x86-64 --syntax intel $(COMPILER_OPT)

patch-x86_intel:
	python3 asymprobe.py -patch x86 --syntax intel $(COMPILER_OPT)

patch-x86-64_intel:
	python3 asymprobe.py -patch x86-64 --syntax intel $(COMPILER_OPT)

patch: $(addprefix patch-,$(FAST_ARCHS))

$(addprefix patch-,$(ARCHS)):
	$(if $(filter $(patsubst patch-%,%,$@),$(X86_ARCHS)),python3 asymprobe.py -patch $(patsubst patch-%,%,$@) --syntax intel $(COMPILER_OPT),python3 asymprobe.py -patch $(patsubst patch-%,%,$@) $(COMPILER_OPT))

define do_preprocess
	$(if $(filter-out $(X86_ARCHS),$(1)),\
		$(foreach arch,$(filter-out $(X86_ARCHS),$(1)),\
			(cd dataset && python3 build_coreutils.py --arch $(arch));\
			$(foreach compiler,$(COMPILERS),\
				python3 dataset/extract_instructions.py $(arch) $(compiler) template/template_$(arch)_$(compiler).s;)),\
		:)
	$(if $(filter $(X86_ARCHS),$(1)),\
		$(foreach arch,$(filter $(X86_ARCHS),$(1)),\
			(cd dataset && python3 build_coreutils.py --arch $(arch) --syntax $(2));\
			$(foreach syntax,$(2),$(foreach compiler,$(COMPILERS),\
				python3 dataset/extract_instructions.py $(arch) $(compiler) template/template_$(arch)_$(syntax)_$(compiler).s --syntax $(syntax);))),\
		:)
endef

PREPROCESS_ARCHS  ?= $(FAST_ARCHS)
PREPROCESS_SYNTAX ?= intel

# Build coreutils and extract instructions for fast archs (intel only for x86)
preprocess:
	$(call do_preprocess,$(PREPROCESS_ARCHS),$(PREPROCESS_SYNTAX))

# Build coreutils and extract instructions for all archs (intel + att for x86)
preprocess-all:
	$(call do_preprocess,$(ARCHS),$(SYNTAXES))

# $(1)=archs $(2)=syntaxes $(3)=report dir $(4)=binary (output) dir $(5)=bugs dir
define do_triage
	$(if $(filter-out $(X86_ARCHS),$(1)),\
		$(foreach arch,$(filter-out $(X86_ARCHS),$(1)),\
			python3 report/triage.py $(3)/report_$(arch)_*.txt; \
			python3 report/bug_triage.py $(3)/report_$(arch)_*.txt -o $(5) -s $(4); \
			python3 bugs/reg_checks.py $(arch) -d $(5);),\
		:)
	$(if $(filter $(X86_ARCHS),$(1)),\
		$(foreach arch,$(filter $(X86_ARCHS),$(1)),$(foreach syntax,$(2),\
			python3 report/triage.py $(3)/report_$(arch)_$(syntax)_*.txt; \
			python3 report/bug_triage.py $(3)/report_$(arch)_$(syntax)_*.txt -o $(5) -s $(4); \
			python3 bugs/reg_checks.py $(arch) --syntax $(syntax) -d $(5);)),\
		:)
endef

triage:
	$(call do_triage,$(FAST_ARCHS),intel,report,output,bugs)

triage-all:
	$(call do_triage,$(ARCHS),$(SYNTAXES),report,output,bugs)

# Triage the -patch results (report-patch/ + output-patch/ -> bugs-patch/)
triage-patch:
	$(call do_triage,$(FAST_ARCHS),intel,report-patch,output-patch,bugs-patch)

COMPILER_NO_GCC15 = --no-compiler gcc-15
COMPILER_GCC15 = --compiler gcc-15
X86_INTEL_ARCHS = $(addsuffix _intel,$(X86_ARCHS))

# Fail early with a clear message if a required Docker image is missing
define require_image
	@docker image inspect $(1) >/dev/null 2>&1 || { \
		echo ""; \
		echo "ERROR: Docker image '$(1)' not found."; \
		echo "       Build the images first: make docker-build (see README section 1)."; \
		echo ""; \
		exit 1; \
	}
endef

docker-fast:
	$(call require_image,asymprobe)
	$(call require_image,asymprobe:gcc-15)
	$(call require_image,asymprobe:cross)
	$(call require_image,asymprobe:gcc-15-cross)
	docker run --rm -v $(PWD):/workspace -w /workspace asymprobe               make $(X86_INTEL_ARCHS)  COMPILER_OPT="$(COMPILER_NO_GCC15)"
	docker run --rm -v $(PWD):/workspace -w /workspace asymprobe:gcc-15        make $(X86_INTEL_ARCHS)  COMPILER_OPT="$(COMPILER_GCC15)"
	docker run --rm -v $(PWD):/workspace -w /workspace asymprobe:cross         make aarch64             COMPILER_OPT="$(COMPILER_NO_GCC15)"
	docker run --rm -v $(PWD):/workspace -w /workspace asymprobe:gcc-15-cross  make aarch64             COMPILER_OPT="$(COMPILER_GCC15)"

docker-all:
	$(call require_image,asymprobe)
	$(call require_image,asymprobe:gcc-15)
	$(call require_image,asymprobe:cross)
	$(call require_image,asymprobe:gcc-15-cross)
	docker run --rm -v $(PWD):/workspace -w /workspace asymprobe               make $(X86_ARCHS)	COMPILER_OPT="$(COMPILER_NO_GCC15)"
	docker run --rm -v $(PWD):/workspace -w /workspace asymprobe:gcc-15        make $(X86_ARCHS)    COMPILER_OPT="$(COMPILER_GCC15)"
	docker run --rm -v $(PWD):/workspace -w /workspace asymprobe:cross         make $(NON_X86_ARCHS) COMPILER_OPT="$(COMPILER_NO_GCC15)"
	docker run --rm -v $(PWD):/workspace -w /workspace asymprobe:gcc-15-cross  make $(NON_X86_ARCHS) COMPILER_OPT="$(COMPILER_GCC15)"

docker-patch:
	$(call require_image,asymprobe)
	$(call require_image,asymprobe:gcc-15)
	$(call require_image,asymprobe:cross)
	$(call require_image,asymprobe:gcc-15-cross)
	docker run --rm -v $(PWD):/workspace -w /workspace asymprobe               make $(addprefix patch-,$(X86_INTEL_ARCHS))  COMPILER_OPT="$(COMPILER_NO_GCC15)"
	docker run --rm -v $(PWD):/workspace -w /workspace asymprobe:gcc-15        make $(addprefix patch-,$(X86_INTEL_ARCHS))  COMPILER_OPT="$(COMPILER_GCC15)"
	docker run --rm -v $(PWD):/workspace -w /workspace asymprobe:cross         make patch-aarch64					   COMPILER_OPT="$(COMPILER_NO_GCC15)"
	docker run --rm -v $(PWD):/workspace -w /workspace asymprobe:gcc-15-cross  make patch-aarch64                      COMPILER_OPT="$(COMPILER_GCC15)"


docker-preprocess:
	$(call require_image,asymprobe)
	$(call require_image,asymprobe:cross)
	tar xzf dataset/coreutils-9.7.tar.gz -C dataset
	docker run --rm -v $(PWD):/workspace -w /workspace asymprobe       make preprocess PREPROCESS_ARCHS="$(X86_ARCHS)"
	docker run --rm -v $(PWD):/workspace -w /workspace asymprobe:cross  make preprocess PREPROCESS_ARCHS="aarch64"

docker-preprocess-all:
	$(call require_image,asymprobe)
	$(call require_image,asymprobe:cross)
	tar xzf dataset/coreutils-9.7.tar.gz -C dataset
	docker run --rm -v $(PWD):/workspace -w /workspace asymprobe       make preprocess-all ARCHS="$(X86_ARCHS)"
	docker run --rm -v $(PWD):/workspace -w /workspace asymprobe:cross  make preprocess-all ARCHS="$(NON_X86_ARCHS)"

docker-triage:
	$(call require_image,asymprobe)
	docker run --rm -v $(PWD):/workspace -w /workspace asymprobe make triage

docker-triage-patch:
	$(call require_image,asymprobe)
	docker run --rm -v $(PWD):/workspace -w /workspace asymprobe make triage-patch

docker-triage-all:
	$(call require_image,asymprobe)
	docker run --rm -v $(PWD):/workspace -w /workspace asymprobe make triage-all

docker-build:
	docker build -t asymprobe .
	docker build -f Dockerfile-cross                -t asymprobe:cross        .
	docker build -f dataset/Dockerfile.gcc-15       -t asymprobe:gcc-15       dataset/
	docker build -f dataset/Dockerfile.gcc-15-cross -t asymprobe:gcc-15-cross dataset/

clean:
	find output/ -type f -delete
