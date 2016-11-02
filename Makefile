CC	=	gcc

RM	=	rm -rf

LDFLAGS	=	-I./include/

CFLAGS	+=	-W

SPATH	=	./asm/

NAME	=	asm_tests

SRC	=	main.c			\
		$(SPATH)asm_add.s	\
		$(SPATH)asm_putchar.s	\
		$(SPATH)asm_strlen.s	\
		$(SPATH)asm_putstr.s	\
		$(SPATH)asm_memset.s	\
		$(SPATH)asm_nmemset.s	\
		$(SPATH)asm_writeData.s \
		$(SPATH)asm_strchr.s	\
		$(SPATH)asm_strrchr.s	\
		$(SPATH)asm_memcpy.s	\
		$(SPATH)asm_memmove.s	\

OBJ	=	$(SRC:.s=.o)

all:
	$(CC) -o $(NAME) $(SRC) $(LDFLAGS)

clean:
	$(RM) $(NAME)

fclean:	clean

re:	fclean all
