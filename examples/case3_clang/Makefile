.PHONY: all case3_clang clean

all: case3_clang

case3_clang: case3_clang.c
	clang -save-temps -masm=intel -no-pie -fno-pie $< -o $@
	./$@

clean:
	rm -f case3_clang *.i *.s *.o
