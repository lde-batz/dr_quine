#include <stdlib.h>
#include <stdio.h>

#define SELF "hello"

int main()
{
	int i = 5;
	char filename[100];
	char excutname[100];
	char cmd[1000];
	sprintf(filename, "Sully_%d.c\n", i - 1);
	sprintf(excutname, "Sully_%d\n", i - 1);
	FILE *fd = fopen(filename, "w+");
	if (!fd){return 0;}
	fprintf(fd, SELF);
	fclose(fd);
	sprintf(cmd, "gcc -Wall -Wextra Werror -o %s %s;./%s", excutname, filename, excutname);
	system(cmd);
}