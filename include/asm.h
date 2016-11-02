#ifndef ASM_H_
# define ASM_H_

char    asm_add(char    c);
void    asm_putchar(char c);
char    asm_strlen(char *s);
void    asm_putstr(char *s);
char    *asm_memset(char *s, char c, int i);
char    *asm_nmemset(char *s, char c, int i, int j);
int     asm_write(char *file, char *s);
char	*asm_strchr(char *str, char c);
char	*asm_strrchr(char *str, char c);
void	asm_memcpy(char *dest, char *src, int n);
void	asm_memmove(char *dest, char *src, int n);

#endif
