# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aindiaz <aindiaz@student.42urduliz>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/13 14:27:42 by aindiaz           #+#    #+#              #
#    Updated: 2023/01/10 15:32:43 by aindiaz          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS		= ft_isalnum.c ft_isalpha.c ft_memset.c ft_memcmp.c \
			ft_isascii.c ft_isdigit.c ft_isprint.c ft_strnstr.c\
			ft_strlcpy.c ft_strlen.c ft_toupper.c ft_tolower.c \
			ft_strchr.c ft_strrchr.c ft_strncmp.c ft_memchr.c \
			ft_calloc.c ft_strdup.c \

OBJS		= $(SRCS:.c=.o)
	
CC			= gcc
RM			= rm -f
CFLAGS		= -Wall -Wextra -Werror

NAME		= libft.a

all:		$(NAME)

$(NAME):	$(OBJS)
			ar rcs $(NAME) $(OBJS)

clean:
			$(RM) $(OBJS)

fclean:		clean
			$(RM) $(NAME)

re:			fclean $(NAME)

.PHONY:		all clean fclean
