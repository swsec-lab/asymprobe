.PHONY: all case1_clang clean

all: case1_clang

case1_clang: case1_clang.c
	clang -save-temps -masm=intel -no-pie -fno-pie $< -o $@
	./$@

clean:
	rm -f case1_clang *.i *.s *.o
