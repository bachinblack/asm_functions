        .section .text
        .global asm_memmove
        .type asm_memmove, @function

asm_memmove:
        mov $0x0,%rcx
        mov %rdi,%rax
_loop:
        mov (%rsi),%cxl
        mov %cxl,(%rdi)
        inc %rdi
        inc %rsi
        dec %rdx
        jnz _loop
_exit:
        ret
