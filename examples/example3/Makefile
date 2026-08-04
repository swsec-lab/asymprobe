.PHONY: all intel att clean

CC           = gcc
CFLAGS_INTEL = -masm=intel -O1 -pie -fpie -DUNIT_SIZE=BYTE
CFLAGS_ATT   = -masm=att   -O1 -pie -fpie -DUNIT_SIZE=BYTE

all: intel

intel: example3.c
	$(CC) $(CFLAGS_INTEL) $< -o example3
	./example3

att: example3.c
	$(CC) $(CFLAGS_ATT) $< -o example3
	./example3

clean:
	rm -f example3 *.i *.s *.o
