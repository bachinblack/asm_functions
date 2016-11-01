	.section .text
	.global asm_memset
	.type asm_memset @function

asm_memset:
	mov %rdi,%rax
_loop:	
	mov %sil,(%rdi)
	inc %rdi
	dec %rdx
	jnz _loop
	inc %rdi
	ret
