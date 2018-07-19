#include <asm/unistd.h>
#include <syscall.h>	

	.file	"konichiwa.S"
	.section	.rodata
hello:
	.string	"Hello, World!\n"
	.text
	.globl	_start
	.type	_start, @function
_start:
	## write
	movl	$14, %edx
	movl	$hello, %esi
	movl	$1, %edi
	movl	$SYS_write, %eax
	syscall
	
	## syscall exit 0
	movl	$0, %edi
	movl	$SYS_exit, %eax
	syscall

.size	_start, .-_start
	.section	.note.GNU-stack,"",@progbits
