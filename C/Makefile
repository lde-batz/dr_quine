# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lde-bat <lde-bat@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/07/03 16:57:38 by lde-bat           #+#    #+#              #
#    Updated: 2020/08/11 21:38:18 by lde-bat          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME =	Colleen \
		Grace

GCC = gcc -Wall -Wextra -Werror

.SILENT:

all: $(NAME)

$(NAME):
	$(GCC) -o Colleen Colleen.c
	printf '\033[32m[ ✔ ] %s\n\033[0m' "Create Colleen"
	$(GCC) -o Grace Grace.c
	printf '\033[32m[ ✔ ] %s\n\033[0m' "Create Grace"
	mkdir -p Sully
	$(GCC) -o Sully/Sully Sully.c
	printf '\033[32m[ ✔ ] %s\n\033[0m' "Create Grace"


clean:
	rm -f Grace_kid.c
	printf '\033[31m[ ✔ ] %s\n\033[0m' "Clean dr_quine"

fclean: clean
	rm -f Colleen Grace
	rm -rf Sully
	printf '\033[31m[ ✔ ] %s\n\033[0m' "Fclean dr_quine"

re: fclean all

.PHONY: all clean fclean re

