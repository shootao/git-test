CC=gcc
CFLAGS=-Wall -c -g -O2
obj=main


$(obj):$(obj).o hello.o
	$(CC) $^ -o $@

$(obj).o:$(obj).c
	$(CC) $(CFLAGS) $< -o $@

hello.o:hello.c
	$(CC) $(CFLAGS) $< -o $@

.PHONY:
	clean

clean:
	$(RM) *.o $(obj)
