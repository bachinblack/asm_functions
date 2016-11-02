        .section .text
        .global asm_nmemset
        .type asm_nmemset @function

asm_nmemset:
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
