	.section .text
	.global asm_write
	.type asm_write @function

asm_write:
	mov %rsi,%r9
	mov $0x55,%rax
	mov $00666,%rsi
	syscall
	mov %r9,%rsi
	mov $0x0,%rcx
_loop:
	mov (%rsi),%cl
	cmp $0x0,%cl
	jz _exit
	inc %rsi
	jmp _loop

_exit:
	sub %r9,%rsi
	mov %rsi,%rdx
	mov %r9,%rsi
	mov %rax,%rdi
	mov $0x1,%rax
	syscall
	mov %rdx,%rax
	ret
