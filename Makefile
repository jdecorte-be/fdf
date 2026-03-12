# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: decortejohn <decortejohn@student.42.fr>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/02/07 17:05:27 by decortejohn       #+#    #+#              #
#    Updated: 2022/02/16 15:25:24 by decortejohn      ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = fdf

CC = gcc

CFLAGS = -Wall -Wextra -Werror -std=gnu17

MLX_DIR = minilibx-linux
MLX_FLAGS = -L $(MLX_DIR) -lmlx -lXext -lX11 -lm
MLX_INC = -I $(MLX_DIR)

RM = rm -rf

SRCS = src/main.c src/fdf.c src/parse.c src/utils.c

SRCS_BONUS = src_bonus/main_bonus.c src_bonus/fdf_bonus.c \
             src_bonus/parse_bonus.c src_bonus/utils_bonus.c

$(NAME) :
	make all -C $(MLX_DIR)
	make all -C libft
	$(CC) $(CFLAGS) $(MLX_INC) $(SRCS) libft/libft.a $(MLX_FLAGS) -o $(NAME)

bonus :
	make clean
	make all -C $(MLX_DIR)
	make all -C libft
	$(CC) $(CFLAGS) $(MLX_INC) $(SRCS_BONUS) libft/libft.a $(MLX_FLAGS) -o $(NAME)

all : $(NAME)

fclean : clean
	$(RM) $(NAME)
	make clean -C $(MLX_DIR)
	make fclean -C libft

clean :
	$(RM) $(NAME)
	make clean -C $(MLX_DIR)
	make clean -C libft

re : fclean all
