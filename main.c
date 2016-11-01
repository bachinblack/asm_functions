#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "asm.h"

int	main(int argc, char **argv)
{
  if (argc < 2)
    {
    return (printf("To use this main, you need to uncomment some of the line \
in it and add the right number of arguments while launching the\
 executable.\n"));
    }
  char	i = 0;
  //asm_putchar('c');
  //i =  asm_strlen(argv[1]);
  //  asm_ptr(c);
  //asm_putstr(argv[1]);
  //argv[1] = asm_memset(argv[1], argv[2][0], atoi(argv[3]));                          
  //argv[1] = asm_pmemset(argv[1], argv[2][0], atoi(argv[3]), atoi(argv[4]));
  //i = asm_write(argv[1], argv[2]);
  //puts(argv[1]);
  //printf("%d\n", i);
  return (EXIT_SUCCESS);
}
