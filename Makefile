OBJS	= xoshiro512starstar.o xoshiro-test.o
SOURCE	= xoshiro512starstar.c xoshiro-test.c
HEADER	= xoshiro512starstar.h
OUT	= xoshiro-test
CC	 = gcc
CFLAGS   = -g -Wall -Wextra -Wpedantic -O3 -fsanitize=undefined
#CFLAGS   = -g -Wall -Wextra -Wpedantic -O3

all: $(OBJS)
	$(CC) $(OBJS) -o $(OUT) $(CFLAGS)

%.o: %.c $(HEADER)
	$(CC) -c -o $@ $< $(CFLAGS)

clean:
	rm -f $(OBJS) $(OUT)

