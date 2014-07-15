#include <stdio.h>
int tempf(){
for(int i=0;i<5;++i)
	printf("inside tempf");

return 0;
}

int main(){

tempf();
int t;
scanf("%d",&t);
for(int i=0;i<t;++i)
	for(int j=0;j<5;j++)
	printf ("%d",i);
printf("sf");

return 0;
}
