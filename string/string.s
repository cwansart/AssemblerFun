.global _start

.text
_start:
	pushq $65
	pushq $66

	movq $1, %rax
	movq $1, %rdi
	leaq (%rsp), %rsi
	movq $2, %rdx
	syscall

	movq $60, %rax
	xor %rdi, %rdi
	syscall
