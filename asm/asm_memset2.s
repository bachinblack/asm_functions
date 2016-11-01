        .section .text
        .global asm_pmemset
        .type asm_pmemset @function

asm_pmemset:
	mov %rdi,%rax
	sub %rdx,%rcx
_seek:
	inc %rdi
	dec %rdx
	jnz _seek
_loop:
        mov %sil,(%rdi)
        inc %rdi
        dec %rcx
        jnz _loop
        inc %rdi
        ret
