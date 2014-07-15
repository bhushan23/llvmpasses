#include <stdio.h> 

int main() { 

 int n = 5; 

 goto label5; 

label0: 

 printf("This code is unreachable\n"); 

 n = 0; 

label1: 

 n *= 2; 

 goto label4; 

label2: 

 printf("This code is unreachable\n"); 

 n = 0; 

label3: 

 printf("This code is reachable from label2, but not from entry.\n"); 

 n = 0; 

label4: 

 n *= 5; 

 goto end; 

label5: 

 n *= 3; 

 goto label1; 

end: 

 printf("Expected result: 5*3*2*5=150\n"); 

 printf("%d", n); 

} 

