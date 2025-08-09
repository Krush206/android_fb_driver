SRC := graphics.c \
       graphics_fbdev.c
OBJ := $(SRC:.c=.o)

all: $(OBJ)

%.o: %.c
	arm-linux-gnueabihf-gcc -c -O2 $<

clean:
	rm -f ./*.o
