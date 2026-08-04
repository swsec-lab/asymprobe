.PHONY: all case1_gcc clean

all: case1_gcc

case1_gcc: case1_gcc.c
	gcc -masm=intel -pie -fpie $< -o $@
	./$@

clean:
	rm -f case1_gcc *.i *.s *.o
