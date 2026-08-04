.PHONY: all intel att clean

CC           = gcc
CFLAGS_INTEL = -masm=intel -m32 -no-pie -fno-pie
CFLAGS_ATT   = -masm=att   -m32 -no-pie -fno-pie

all: intel

intel: example2.c
	$(CC) $(CFLAGS_INTEL) $< -o example2
	./example2

att: example2.c
	$(CC) $(CFLAGS_ATT) $< -o example2
	./example2

clean:
	rm -f example2 *.i *.s *.o
