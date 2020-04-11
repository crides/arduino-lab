#ifndef _OLED_H_
#define _OLED_H_

#include <stdint.h>

#include "oledfont.h"

#define OLED_CMD 0x00
#define OLED_DATA 0x40

void oled_prepare();
void oled_push_byte(uint8_t b);
void oled_send();
void oled_send_buffer(uint8_t *buf, uint8_t len);
void oled_init();
void oled_pos(uint8_t x, uint8_t y);
void oled_putc(unsigned char c);
void oled_clear();

#endif
