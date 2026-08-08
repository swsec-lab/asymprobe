ROOT       := $(abspath $(CURDIR)/../..)
IMG        := asymprobe
IMG_GCC15  := asymprobe:gcc-15
# PYTHONDONTWRITEBYTECODE keeps __pycache__ out of the repository root, which
# listing.py would otherwise create by importing asymprobe.py.
DOCKER      = docker run --rm -u $$(id -u):$$(id -g) -e PYTHONDONTWRITEBYTECODE=1 \
              -v $(ROOT):/workspace -w /workspace/experiments/vector_reg_symbol

ARCHS = x86 x86-64

.PHONY: all listing summary clean

define require_image
	@docker image inspect $(1) >/dev/null 2>&1 || { \
		echo ""; \
		echo "ERROR: Docker image '$(1)' not found."; \
		echo "       Build the images first: make docker-build (see README section 1)."; \
		echo ""; \
		exit 1; \
	}
endef

all: listing summary

# Assemble template.s with every compiler and list what each line became.
# asymprobe        provides clang-14..22 and gcc-14
# asymprobe:gcc-15 provides gcc-15
listing:
	$(call require_image,$(IMG))
	$(call require_image,$(IMG_GCC15))
	$(DOCKER) $(IMG)       python3 listing.py --arch $(ARCHS) --no-compiler gcc-15
	$(DOCKER) $(IMG_GCC15) python3 listing.py --arch $(ARCHS) --compiler gcc-15

# Collapse the listings into one table per architecture; reads files only
summary:
	$(call require_image,$(IMG))
	$(DOCKER) $(IMG) python3 summary.py

clean:
	rm -rf results work
