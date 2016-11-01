	.section .text
	.global asm_add
	.type asm_add, @function

asm_add:
	add $3,%dil
	mov %dil,%al
	ret
	
