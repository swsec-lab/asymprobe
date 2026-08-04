.PHONY: all intel att clean

CC           = clang
CFLAGS_INTEL = -save-temps -masm=intel -pie -fpie
CFLAGS_ATT   = -save-temps -masm=att   -pie -fpie

all: intel

intel: example1.c
	$(CC) $(CFLAGS_INTEL) $< -o example1
	./example1

att: example1.c
	$(CC) $(CFLAGS_ATT) $< -o example1
	./example1

clean:
	rm -f example1 *.i *.s *.o
