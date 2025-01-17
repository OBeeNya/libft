# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: baubigna <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/29 09:21:59 by baubigna          #+#    #+#              #
#    Updated: 2021/12/04 13:15:25 by baubigna         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		= libft.a

GCC			= gcc

RM			= rm -rf

SRCS		= ft_atoi.c \
			  ft_bzero.c \
			  ft_calloc.c \
			  ft_isalnum.c \
			  ft_isalpha.c \
			  ft_isascii.c \
			  ft_isdigit.c \
			  ft_isprint.c \
			  ft_itoa.c \
			  ft_memchr.c \
			  ft_memcmp.c \
			  ft_memcpy.c \
			  ft_memmove.c \
			  ft_memset.c \
			  ft_putchar_fd.c \
			  ft_putendl_fd.c \
			  ft_putnbr_fd.c \
			  ft_putstr_fd.c \
			  ft_split.c \
			  ft_strchr.c \
			  ft_strdup.c \
			  ft_striteri.c \
			  ft_strjoin.c \
			  ft_strlcat.c \
			  ft_strlcpy.c \
			  ft_strlen.c \
			  ft_strmapi.c \
			  ft_strncmp.c \
			  ft_strnstr.c \
			  ft_strrchr.c \
			  ft_strtrim.c \
			  ft_substr.c \
			  ft_tolower.c \
			  ft_toupper.c

SRCS_B		= 	  ft_lstadd_back.c \
			  ft_lstadd_front.c \
			  ft_lstclear.c \
			  ft_lstdelone.c \
			  ft_lstiter.c \
			  ft_lstlast.c \
			  ft_lstmap.c \
			  ft_lstnew.c \
			  ft_lstsize.c


OBJS		= ${SRCS:.c=.o}

OBJS_B		= ${SRCS_B:.c=.o}

${NAME}:	${OBJS}
			ar rcs ${NAME} ${OBJS}

GFLAGS		= -Wall -Wextra -Werror

all:		${NAME}

.c.o:
		$(GCC) $(GFLAGS) -c $< -o ${<:.c=.o}

bonus:		${OBJS} ${OBJS_B}
			ar rcs ${NAME} ${OBJS} ${OBJS_B}

clean:
				${RM} ${OBJS} ${OBJS_B}

fclean:		clean
				${RM} ${NAME}

re:			fclean all
