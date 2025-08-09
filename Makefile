SRC := graphics.c \
    graphics_fbdev.c \
    resources.c
OBJ := $(SRC:.c=.o)

all: $(OBJ)

%.o: %.c
	arm-linux-gnueabihf-gcc -c -O2 $<

clean:
	rm -f ./*.o
