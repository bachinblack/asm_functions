	.section .text
	.global asm_putchar
	.type asm_putchar, @function

asm_putchar:
	mov %dil,-0x1(%rsp)
	mov $0x1,%rax
	mov $0x1,%rdi
	lea -0x1(%rsp),%rsi
	mov $0x1,%rdx
	syscall
	ret
