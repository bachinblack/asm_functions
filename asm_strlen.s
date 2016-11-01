	.section .text
	.global asm_strlen
	.type asm_strlen, @function

asm_strlen:
	mov $0x0,%rcx
_loop:
	mov (%rdi),%cl
	cmp $0x0,%cl
	jz _exit
	inc %rdi
	jmp _loop
_exit:
	sub %rax,%rdi
	mov %rdi,%rax
	ret
