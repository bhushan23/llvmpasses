#include <stdio.h>
int fun1(){
return 1;
}
int main(){

		int t;
		for(int i=0;i<2;++i){
				t+=2;
				for(int j=0;j<5;j++){
						printf ("%d",i);
				}
				t++;
				t--;
		}
		return 0;
}
