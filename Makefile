OBJS = hello simple
CCi = gcc

all: hello simple

hello:
	$(CC) hello.c -o hello

simple:
	$(CC) simple.c -o simple -I/usr/include/curl -I/usr/include/cups 
clean:
	rm -rf $(OBJS)
