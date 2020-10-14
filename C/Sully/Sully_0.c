#include <stdlib.h>
#include <stdio.h>
#define SELF "#include <stdlib.h>%c#include <stdio.h>%c#define SELF %c%s%c%cint main(){%cint i = %d;%cif (i<=0){return 0;}%cchar filename[100],excutname[100],cmd[1000];sprintf(filename,%cSully_%%d.c%c,i-1);sprintf(excutname,%cSully_%%d%c,i-1);%cFILE *fd=fopen(filename,%cw+%c);if (!fd){return 0;}fprintf(fd,SELF,10,10,34,SELF,34,10,10,i-1,10,10,34,34,34,34,10,34,34,10,34,34);fclose(fd);%csprintf(cmd,%cgcc -Wall -Wextra -Werror -o %%s %%s ; ./%%s%c,excutname,filename,excutname);system(cmd);}"
int main(){
int i = 0;
if (i<=0){return 0;}
char filename[100],excutname[100],cmd[1000];sprintf(filename,"Sully_%d.c",i-1);sprintf(excutname,"Sully_%d",i-1);
FILE *fd=fopen(filename,"w+");if (!fd){return 0;}fprintf(fd,SELF,10,10,34,SELF,34,10,10,i-1,10,10,34,34,34,34,10,34,34,10,34,34);fclose(fd);
sprintf(cmd,"gcc -Wall -Wextra -Werror -o %s %s ; ./%s",excutname,filename,excutname);system(cmd);}