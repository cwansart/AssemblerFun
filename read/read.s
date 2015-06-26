.global _start

.text
_start:
	movq $1, %rax
	movq $1, %rdi
	movq $msg, %rsi
	movq $len, %rdx
	syscall

	movq $0, %rax
	movq $0, %rdi
	movq $buff, %rsi
	movq $32, %rdx

	movq $60, %rax
	xor %rdi, %rdi
	syscall

.bss
	.lcomm buff, 32

.data
msg:
	.ascii "Name: "
	len = . - msg
