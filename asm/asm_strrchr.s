        .section .text
        .global asm_strrchr
        .type asm_strrchr, @function

asm_strrchr:
	mov $0x0,%rdx
	mov $0x0,%rcx
_init:
	cmp %cxl,(%rdi)
	jz _loop
	inc %rdi
	inc %rdx
	jmp _init
_loop:
	dec %rdi
	dec %rdx
        jz _fail
        cmp %sil,(%rdi)
        jz _exit
        jmp _loop
_exit:
        mov %rdi,%rax
	ret
_fail:
	mov $0x0,%rax
	ret
