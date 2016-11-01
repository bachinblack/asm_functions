	.section .text
	.global asm_strlen
	.type asm_strlen, @function

asm_strlen:
	mov $0x0,%rcx
_loop:
	mov (%rdi),%cl
	inc %rdi
	cmp $0x0,%cl
	jnz _loop
_exit:
	sub %rax,%rdi
	dec %rdi
	mov %rdi,%rax
	ret
