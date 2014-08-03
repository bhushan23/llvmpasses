#include <stdio.h>
int main(){
		int a,c;
		unsigned int b;
		//b = 5;
		a = -3;
		scanf("%d",&b);	
		c = a % b;
		c = b % a;

		printf("\n%d",c);
		//c = a  b;
		a = 3;
		c = a % b;
		printf("\n%d",c);
	
		return 0;
}
