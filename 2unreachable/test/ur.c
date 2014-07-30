#include<stdio.h>
int main(){
	int i = 5;
	goto a;
	printf("hello");
	printf("hello");
	printf("hello");

a:
	goto b;
	printf("hello");
	printf("hello");
	printf("hello");



b:
	return 0;
}
