        .section .text
        .global asm_ptr
        .type asm_ptr, @function

asm_ptr:
_loop:
	mov $0x1,%rax
	cmp $0x0,%rax
	jnz _loop
	ret
