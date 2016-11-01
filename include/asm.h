#ifndef ASM_H_
# define ASM_H_

char    asm_add(char    c);
void    asm_putchar(char c);
char    asm_strlen(char *s);
char    *asm_ptr(char *s);
void    asm_putstr(char *s);
char    *asm_memset(char *s, char c, int i);
char    *asm_pmemset(char *s, char c, int i, int j);
int     asm_write(char *file, char *s);

#endif
