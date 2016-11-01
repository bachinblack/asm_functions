# asm_functions

There will probably be a library soon, instead of some functions and a main.
Every names are explicit except possibly the asm_write() function, present in ./asm/asm_writeData.s.

The purpose of this function is to open a file using the first parameter as a name and write the content of the second parameter into it. It also return the number of characters of the string written in the file.
