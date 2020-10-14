#include<stdio.h>
#define SRC "Grace_kid.c"
#define DUPLI "#include<stdio.h>%c#define SRC %cGrace_kid.c%c%c#define DUPLI %c%s%c%c#define FT(x) int main(){FILE *fd=fopen(SRC, %cw+%c);if (!fd){return 0;};fprintf(fd,DUPLI,10,34,34,10,34,DUPLI,34,10,34,34,10,47,47,10);fclose(fd);}%c%c* Main *%c%cFT(SRC)"
#define FT(x) int main(){FILE *fd=fopen(SRC, "w+");if (!fd){return 0;};fprintf(fd,DUPLI,10,34,34,10,34,DUPLI,34,10,34,34,10,47,47,10);fclose(fd);}
/* Main */
FT(SRC)