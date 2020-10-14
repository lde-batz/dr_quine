#include<stdio.h>

main()
{
//un commentaire
	char	*s = "include<stdio.h>%c%cmain()%c{%c%c%cun commentaire%c	char	*s = %c%s%c;%c	printf(s, 10, 10, 10, 10, 47, 47, 10, 34, s, 34, 10, 10, 10);%c}%c";
	printf(s, 10, 10, 10, 10, 47, 47, 10, 34, s, 34, 10, 10, 10);
}
