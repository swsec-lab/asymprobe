#include <stdio.h>
void _RAX(char *arg){ /* Do something */ }
void RAX(char *arg)  __attribute__((alias("_RAX")));
char word[7] = "Hello";
char *get_pointer(){
    return word;
}
void win(char *arg1){
   printf("Capture the Flag\n");
}
int main() {
   char *dp = get_pointer();
   RAX(dp);
   return 0;
}
