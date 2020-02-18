FLAGS = -Wall -Wextra -Werror

SRCS = ft_strlen.s \
		ft_strcpy.s \
		ft_strcmp.s \
		ft_write.s \
		ft_read.s \
		ft_strdup.s \

NAME = libasm.a

OBJ = $(SRCS:%.s=%.o)

%.o: %.s
	nasm -f macho64 -g $< -o $@


all: $(NAME)

$(NAME) : $(OBJ)
	ar rcs $(NAME) $(OBJ)

test: all
	$(CC) $(FLAGS) test.c $(NAME) -I libasm.h

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME) a.out

re: fclean all test