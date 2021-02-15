#!/bin/bash

# riscv64-linux-gnu-gcc -o rv-hello rv-hello.s -nostdlib -static

riscv64-linux-gnu-as -march=rv64imac -o rv-hello.o rv-hello.s
riscv64-linux-gnu-ld -o rv-hello rv-hello.o
