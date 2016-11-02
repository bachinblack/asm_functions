	.section .text
	.global asm_strchr
	.type asm_strchr, @function

asm_strchr:
	mov $0x0,%rdx
_loop:
	cmp %dxl,(%rdi)
	jz _fail
	cmp %sil,(%rdi)
	jz _exit
	inc %rdi
	jmp _loop
_exit:
	mov %rdi,%rax
	ret
_fail:
	mov $0x0,%rax
	ret
