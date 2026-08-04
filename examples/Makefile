DOCKER      = docker run --rm -v $(PWD):/workspace -w
DOCKER_IMG  = asymprobe
DOCKER_GCC15 = asymprobe:gcc-15

CASES = case1_clang case1_gcc case2_clang case3_clang case3_gcc example1 example2 example3

.PHONY: all clean $(CASES) $(addprefix docker-,$(CASES))

all: $(addprefix docker-,$(CASES))

docker-case1_clang:
	$(DOCKER) /workspace/case1_clang $(DOCKER_IMG) make
	@echo

docker-case1_gcc:
	$(DOCKER) /workspace/case1_gcc $(DOCKER_IMG) make
	@echo

docker-case2_clang:
	$(DOCKER) /workspace/case2_clang $(DOCKER_IMG) make
	@echo

docker-case3_clang:
	$(DOCKER) /workspace/case3_clang $(DOCKER_IMG) make
	@echo

docker-case3_gcc:
	-$(DOCKER) /workspace/case3_gcc $(DOCKER_GCC15) make
	@echo

docker-example1:
	$(DOCKER) /workspace/example1 $(DOCKER_IMG) make
	@echo

docker-example2:
	$(DOCKER) /workspace/example2 $(DOCKER_IMG) make
	@echo

docker-example3:
	$(DOCKER) /workspace/example3 $(DOCKER_IMG) make
	@echo

clean:
	find . -name '*.i' -o -name '*.s' -o -name '*.o' -o -name '*.bc' | xargs rm -f
	find . -mindepth 2 -maxdepth 2 -type f ! -name '*.c' ! -name 'Makefile' -delete
