.global _start

.text
_start:
	movq $1, %rax # 1 = write
	movq $1, %rdi # 1 = stdout
	movq $msg, %rsi 
	movq $12, %rdx
	syscall

	movq $60, %rax
	xor %rdi, %rdi
	syscall

.data
msg:
	.ascii "Hello World\n"
