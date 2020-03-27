CC = avr-gcc
OBJCOPY = avr-objcopy

.PHONY: all clean

%.o: %.c
	$(CC) -c $<

all:
	$(CC) -g -Os -mmcu=atmega328p -o main.elf main.c
	avr-objcopy -j .text -j .data -O ihex main.elf main.hex
	avrdude -c arduino -p atmega328p -P /dev/ttyUSB0 -b 115200 -U flash:w:main.hex
