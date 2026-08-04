#include <stdio.h>
void RAX(char *arg1){ /* Do something */ }
void win(char *msg);
char XMM7;
char buf[] = "Blag";
void *get_pointer(){
    return win;
}
void win(char *msg){
   XMM7 = 0x46;
   printf("Capture the %s\n", msg);
}
int main(int argc, char **argv) {
   void (*fp)() = get_pointer();
   RAX(buf);
   return 0;
}
