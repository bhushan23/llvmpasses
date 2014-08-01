#include <stdio.h>
int fun1(){
return 1;
}
int main(){

		int t,i,j;
		for( i=0;i<10;++i){
				t+=2;
				for( j=0;j<5;j++){
						printf ("%d",i);
				}
				if(i==3)
						break;
				t++;
				t--;
		}
		return 0;
}
