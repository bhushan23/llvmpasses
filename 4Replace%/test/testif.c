#include <stdio.h>
int main(){

    int a,c;
    unsigned int b,d;
    //b = 5;
    a = 11;
    b = 8;
    c = a % b;
    scanf("%d",&b);
    b = 16;
    c = a % d;
    d = c;
    printf("%d %d ",c,d);
    if((b & (b-1)) == 0 )
        printf("Power 2");
    else
        printf("Not Power 2");
    printf("sdfsdF");
    scanf("%d",&b);
    b = 16;
    c = a % d;
    d = c;
    printf("%d %d ",c,d);
    if((b & (b-1)) == 0 )
        printf("Power 2");
    else
        printf("Not Power 2");
    printf("sdfsdF");


    return 0;
}
