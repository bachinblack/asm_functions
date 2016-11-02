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
  int	i = 0;
  char *str;
  //asm_putchar('c');
  //i =  asm_strlen(argv[1]);
  //asm_putstr(argv[1]);
  //argv[1] = asm_memset(argv[1], argv[2][0], atoi(argv[3]));                          
  //argv[1] = asm_nmemset(argv[1], argv[2][0], atoi(argv[3]), atoi(argv[4]));
  //str = asm_strrchr(argv[1], argv[2][0]);
  //str = asm_strrchr(argv[1], argv[2][0]);
  //i = asm_write(argv[1], argv[2]);
  //puts(str);
  //asm_memcpy(argv[2], argv[1], atoi(argv[3]));
  memcpy(argv[2], argv[1], atoi(argv[3]));
  printf("%s\n", argv[2]);
  return (EXIT_SUCCESS);
}
