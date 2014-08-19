#include <stdio.h>
int main(){
    int i;
scanf("%d",&i);
if(i == 0)
    goto j1;
else if (i == 1)
    goto j2;

else
    goto j3;
j1:
i = 1;
j2:
i = 3;


j3:
return 0;
}
