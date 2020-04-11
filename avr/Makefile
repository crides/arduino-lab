CC = avr-gcc
OBJCOPY = avr-objcopy
DEV = /dev/ttyUSB0

.PHONY: all clean

%.o: %.c
	$(CC) -c $<

all:
	$(CC) -g -Os -mmcu=atmega328p -o main.elf main.c oled.c i2c.c
	avr-objcopy -j .text -j .data -O ihex main.elf main.hex
	avrdude -c arduino -p atmega328p -P $(DEV) -b 115200 -U flash:w:main.hex
