# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ycordell <ycordell@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/03 20:33:05 by ycordell          #+#    #+#              #
#    Updated: 2020/11/27 18:32:39 by ycordell         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = gcc
CFLAGS = -c -Wall -Werror -Wextra

NAME = libft.a

SRCS = ft_memset.c ft_bzero.c ft_memcpy.c ft_memccpy.c ft_memmove.c \
       ft_memchr.c ft_memcmp.c ft_strlen.c ft_strlcpy.c ft_strlcat.c \
       ft_strchr.c ft_strrchr.c ft_strnstr.c ft_strncmp.c ft_putnbr_fd.c \
       ft_atoi.c ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c \
       ft_isprint.c ft_toupper.c ft_tolower.c ft_calloc.c ft_strdup.c \
       ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c \
       ft_strmapi.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c
	   
OBJS = $(SRCS:.c=.o)

HEADER = libft.h

all: $(NAME)

$(NAME): $(OBJS) $(HEADER)
	ar rc $@ $?

%.o: %.c $(HEADER)
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -f $(OBJS)
	
fclean: clean
	rm -f $(NAME)
	
re: fclean all

.PHONY: re all clean fclean
