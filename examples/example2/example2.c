#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static unsigned int total = 0x1000;
static char data[0x1000] = "SESSION_ID=7f3a9c21;...";
static unsigned int offset = 0x20;

char *read_blob(unsigned int seek, unsigned int size)
{
    char *tmp;

    if (seek < offset || seek + size > total)
        return NULL;

    tmp = (char *)malloc(size + 1);
    if (tmp == NULL)
        return NULL;

    memcpy(tmp, data + seek, size);
    tmp[size] = '\0';
    return tmp;
}

int main(void)
{
    char *tmp = read_blob(0x0, 20);

    if (tmp) {
        printf("%s\n", tmp);
        free(tmp);
    }

    return 0;
}
