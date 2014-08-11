#include <stdio.h>
int main(){

    int a,c,b;
  // unsigned int b,d;
    a = 10;
    b = 20;
    c = 30;
    if( a == b ){
        c = a + b;
    }else{
        c = b - a;
    }

    printf("%d",c);
    return 0;
}
