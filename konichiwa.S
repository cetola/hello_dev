#include <asm/unistd.h>
#include <syscall.h>	

	.file	"konichiwa.c"
	.section	.rodata
hello:
	.string	"Hello, World!\n"
	.text
	.globl	_start
	.type	_start, @function
_start:
	## stack stuff
	;pushq	%rbp
	;movq	%rsp, %rbp

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

	## exit 0
	;movl	$0, %eax
	;popq	%rbp
	;ret

.size	_start, .-_start
	.section	.note.GNU-stack,"",@progbits
