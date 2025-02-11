# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: zhilim <zhilim@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/09/23 12:53:23 by zhilim            #+#    #+#              #
#    Updated: 2025/01/05 12:04:26 by zhilim           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS    = ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c ft_strlen.c ft_memset.c ft_bzero.c ft_memcpy.c ft_memmove.c ft_strlcpy.c ft_strlcat.c ft_tolower.c ft_toupper.c ft_strchr.c ft_strrchr.c ft_strncmp.c ft_memchr.c ft_memcmp.c ft_strnstr.c ft_atoi.c ft_calloc.c ft_strdup.c ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c

PATH_TO_SRCS = ./srcs/
PATH_TO_SRCS_BONUS = ./srcs_bonus/

OBJS    = $(patsubst %.c, %.o, $(addprefix $(PATH_TO_SRCS), $(SRCS)))

BONUS	= ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c
BONUS_OBJS	= $(patsubst %.c, %.o, $(addprefix $(PATH_TO_SRCS_BONUS), $(BONUS)))

CC      = gcc
RM      = rm -f
CFLAGS  = -Wall -Wextra -Werror -I.
NAME    = libft.a
all:    $(NAME)
$(NAME):        $(OBJS)
			ar rcs $(NAME) $(OBJS)

clean:
		$(RM) $(OBJS) $(BONUS_OBJS)
fclean:         clean
			$(RM) $(NAME)

re:             fclean $(NAME)

bonus:		$(OBJS) $(BONUS_OBJS)
			ar rcs $(NAME) $(OBJS) $(BONUS_OBJS)

.PHONY:         all clean fclean re bonus
