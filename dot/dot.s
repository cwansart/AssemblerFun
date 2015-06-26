.global _start

.text
_start:
	movq $1, %rax
	movq $1, %rdi
	movq $len, %rsi
	movq $1, %rdx
	syscall

	movq $60, %rax
	xor %rdi, %rdi
	syscall

.data
msg:
	.ascii "Hello"
	len = 50 
