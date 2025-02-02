OBJS = hello rv-hello simple count konichiwa rv-konichiwa *.o
CC = gcc
RVCC = riscv64-linux-gnu-gcc-14
LD = ld
RVLD = riscv64-linux-gnu-ld

all: hello hello-rv konichiwa count simple

konichiwa:
	$(CC) -c konichiwa.S -o konichiwa.o
	$(LD) -o konichiwa konichiwa.o

hello:
	$(CC) hello.c -o hello
	$(CC) -c hello.c

hello-rv:
	$(RVCC) hello.c -o rv-hello
	$(RVCC) -c rv-konichiwa.S -o rv-konichiwa.o
	$(RVLD) -o rv-konichiwa rv-konichiwa.o

simple:
	$(CC) -c simple.c -lcurl
	$(CC) simple.c -o simple -lcurl

count:
	$(CC) -c count.c
	$(CC) count.c -o count

clean:
	rm -rf $(OBJS)
