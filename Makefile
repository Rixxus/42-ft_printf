# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rmount <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/02/22 10:36:38 by rmount            #+#    #+#              #
#    Updated: 2022/03/02 10:15:27 by rmount           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
CC = gcc
CFLAGS = -Wall -Werror -Wextra

RM = rm -f

SRCS = srcs/ft_char_type.c \
	   srcs/ft_printf.c \
	   srcs/ft_char_print.c \
	   srcs/ft_str_print.c \
	   srcs/ft_num_length.c \
	   srcs/ft_hex_print.c \
	   srcs/ft_num_print.c

OJB_DEST = mv *.o srcs

OBJS = $(SRCS:.c=.o)

all: $(NAME)

$(NAME):
	$(MAKE) -C ./libft
	cp libft/libft.a $(NAME)
	$(CC) $(CFLAGS) $(SRCS
	ar -rcs $(NAME) $(OBJS)

clean:
	$(RM) $(OBJS)
	$(MAKE) clean -C ./libft

fclean: clean
	$(MAKE) fclean -C ./libft
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re
