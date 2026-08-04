.PHONY: all case3_gcc clean

all: case3_gcc

case3_gcc: case3_gcc.c
	gcc -O2 -m32 -masm=intel -pie -fpie $< -o $@
	./$@

clean:
	rm -f case3_gcc *.i *.s *.o
