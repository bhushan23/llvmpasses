#include <stdio.h>
int tempf(){

printf("inside tempf");
return 0;
}

int main(){
printf("hello");
tempf();
for(int i=0;i<5;++i)
	printf ("%d",i);
return 0;
}
