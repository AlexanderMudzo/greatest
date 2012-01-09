CFLAGS += -g

# Uncomment to demo parametric testing.
#CFLAGS += -std=c99

all: example

example: example.c greatest.h example-suite.o
	${CC} -o $@ example.c example-suite.o ${CFLAGS} ${LDFLAGS}

clean:
	rm -f example *.o *.core
