#include <stdio.h>
int ZMM8 = 42;
int main(){
  if(ZMM8 & 8)
    printf("Hello world\n");
  return 0;
}
