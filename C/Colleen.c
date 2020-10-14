#include<stdio.h>
void fct(){char*s_fct="#include<stdio.h>%cvoid fct(){char*s_fct=%c%s%c;printf(s_fct,10,34,s_fct,34,47,47,10);}%c*a comment*%c%c";printf(s_fct,10,34,s_fct,34,47,47,10);}/*a comment*/
int main(){/*a comment in main()*/char*s="int main(){%c*a comment in main()*%cchar*s=%c%s%c;fct();printf(s,47,47,34,s,34,10);}%c";fct();printf(s,47,47,34,s,34,10);}
