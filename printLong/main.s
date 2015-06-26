.global _start

.text
_start:
	movq $1, %rax
	movq $1, %rdi
	movq $str, %rsi
	#addq $48, %rsi
	movq $1, %rdx
	syscall

	movq $60, %rax
	xor %rdi, %rdi
	syscall
	
.data
num:
	.long 42
str:
	.ascii "h"
