# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lde-batz <lde-batz@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/07/03 16:57:38 by lde-bat           #+#    #+#              #
#    Updated: 2021/01/14 15:43:10 by lde-batz         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME =	dr_quine

CFLAG := -Wall -Wextra -Werror
CC := gcc $(CFLAG)

SRC_DIR := ./
OBJ_DIR := obj/

SRC += Colleen.c
SRC += Grace.c
SRC += Sully.c

OBJ := $(addprefix $(OBJ_DIR), $(SRC:.c=.o))

SRC := $(addprefix $(SRC_DIR), $(SRC))

.SILENT:

all: $(NAME)

$(NAME): $(OBJ)

$(OBJ_DIR)%.o: $(SRC_DIR)%.c
	mkdir -p $(OBJ_DIR)
	$(CC) -c $< -o $@
	$(CC) -o $* $<
	printf '\033[32m[ ✔ ] %s\n\033[0m' "$<"

move:
	mkdir -p Sullys
	mv -f Sully Sullys/
	mv Sullys Sully

clean:
	rm -f Grace_kid.c
	rm -rf $(OBJ_DIR)
	printf '\033[31m[ ✔ ] %s\n\033[0m' "Clean dr_quine"

fclean: clean
	rm -f Colleen Grace
	rm -rf Sully
	printf '\033[31m[ ✔ ] %s\n\033[0m' "Fclean dr_quine"

re: fclean all

.PHONY: all clean fclean re

