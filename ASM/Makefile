# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lde-batz <lde-batz@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/01/12 17:43:03 by lde-batz          #+#    #+#              #
#    Updated: 2021/01/14 14:59:14 by lde-batz         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME =	dr_quine_asm

CFLAG := -f macho64
CC :=   nasm $(CFLAG)

SRC_DIR := ./
OBJ_DIR := obj/

LDFLAG := -macosx_version_min 10.8 -lSystem -no_pie
LD := ld $(LDFLAG)

SRC += Colleen.s
SRC += Grace.s
SRC += Sully.s

OBJ := $(addprefix $(OBJ_DIR), $(SRC:.s=.o))

SRC := $(addprefix $(SRC_DIR), $(SRC))

.SILENT:

all: $(NAME)

$(NAME): $(OBJ)

$(OBJ_DIR)%.o: $(SRC_DIR)%.s
	mkdir -p $(OBJ_DIR)
	$(CC) $< -o $@
	$(LD) -o $* $@
	printf '\033[32m[ ✔ ] %s\n\033[0m' "$<"

move:
	mkdir -p Sullys
	mv -f Sully Sullys/
	mv Sullys Sully

clean:
	rm -f Grace_kid.s
	rm -rf $(OBJ_DIR)
	printf '\033[31m[ ✔ ] %s\n\033[0m' "Clean dr_quine"

fclean: clean
	rm -f Colleen Grace
	rm -rf Sully
	printf '\033[31m[ ✔ ] %s\n\033[0m' "Fclean dr_quine"

re: fclean all

.PHONY: all clean fclean re

