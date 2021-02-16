# Simple RISC-V Hello World

# The linker needs to know where the value of the start address
.global _start


_start: addi  a0, x0, 1 	# Add 1 (StdOut) to 0 and store in reg a0
        la    a1, helloworld	# Load the address of our string into reg a1
        addi  a2, x0, 13	# Add 13 (the length of the string) to 0 and store in reg a2
        addi  a7, x0, 64	# Add 64 (Linux "write" syscall) to 0 and store in reg a7
        ecall			# Tell Linux to execute the syscall loaded into reg a7


        addi    a0, x0, 0	# Store 0 as a return code into reg a0
        addi    a7, x0, 93	# Store 93 (Linux "terminate program" syscall) in reg a7
        ecall			# Tell Linux to execute the syscall loaded into reg a7

.data
helloworld:      .ascii "Hello World!\n"
