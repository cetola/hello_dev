OBJS = hello simple count konichiwa *.o
CC = gcc
LD = ld

all: hello konichiwa count

konichiwa:
	$(CC) -c konichiwa.S -o konichiwa.o
	$(LD) -o konichiwa konichiwa.o

hello:
	$(CC) hello.c -o hello

simple:
	$(CC) simple.c -o simple -lcurl

count:
	$(CC) count.c -o count

clean:
	rm -rf $(OBJS)
