	.section .text
	.global asm_putstr
	.type asm_putstr, @function

asm_putstr:
	mov %rdi,%rsi
        mov $0x0,%rcx
_loop:
        mov (%rdi),%cl
        cmp $0x0,%cl
        jz _exit
        inc %rdi
        jmp _loop
_exit:
	sub %rsi,%rdi
	mov %rdi,%rdx
	mov $0x1,%rax
	mov $0x1,%rdi
	syscall
        ret
