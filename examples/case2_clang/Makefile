.PHONY: all case2_clang clean

all: case2_clang

case2_clang: case2_clang.c
	clang -save-temps -masm=intel -pie -fpie $< -o $@
	./$@

clean:
	rm -f case2_clang *.i *.s *.o
