CROSS_COMPILE=
CC=$(CROSS_COMPILE)gcc
AR=$(CROSS_COMPILE)ar 
LD=$(CROSS_COMPILE)ld
export CROSS_COMPILE CC AR LD

CFLAGS += -I$(PWD)/include/ -I$(PWD)/ -Wall  -O2 -DARM_ADS
LDFLAGS += -static
SHARELIB = 
export CFLAGS LDFLAGS

TARGET = libmp3.a
SRCS = $(wildcard *.c)
OBJS = $(SRCS:.c=.o)

all: $(OBJS)
	@ $(AR) -rc $(TARGET) $(OBJS)

clean:
	@ rm -f *.o *.a
