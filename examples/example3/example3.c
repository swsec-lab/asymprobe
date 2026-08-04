#include<stdio.h>
#include<stdlib.h>
#include<string.h>
typedef struct _UNIT { int no; /*...*/ } UNIT;
size_t UNIT_SIZE = sizeof(UNIT);

void do_something(char *master_secret){
    strcpy(master_secret, "=======Secret Key:Capture the Flag=======");
}
void write_data(UNIT *buf, int len){
    printf("Write: %d bytes\n", len);
    fwrite(buf, 1, len, stdout);
}
void send_data(UNIT *src, long long unit_count, int unit_size) {
    int len = unit_count * unit_size;
    UNIT *buf = calloc(unit_count, unit_size);

    if (buf) {
        memcpy(buf, src, len);
        write_data(buf, len);
        free(buf);
    }
}
int handle_request(char *user) {
    char master_secret[0x100];
    UNIT response[0x40];
    /* Do something */
    do_something(master_secret);

    send_data(response, 0x40, UNIT_SIZE);

    return 0;
}

int main(){
    char id[0x1000] = "user";
    handle_request(id);
    return 0;
}
