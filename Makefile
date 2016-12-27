OBJS = hello simple count
CCi = gcc

all: hello simple count

hello:
	$(CC) hello.c -o hello

simple:
	$(CC) simple.c -o simple -lcurl

count:
	$(CC) count.c -o count

clean:
	rm -rf $(OBJS)
