#include <avr/pgmspace.h>
#include <stdio.h>
#include "oled.h"
#include "i2c.h"

static uint8_t OLED_BUF[160];
static uint8_t OLED_LEN;
const uint8_t OLED_ADDR = 0x3C;

uint8_t INIT_DATA[] = {
    0x00,           // CMD mode
    0xAE,           // Display off
    0x20, 0x00,     // Set memory addressing mode: Horizontal addressing
    0xC8,           // Set COM Output Scan Direction
    0xA1,           // Set segment re-map 0 to 127
    0x40,           // Display starts at 0
    0xA8, 0x3F,     // Set multiplex ratio(1 to 64)
    0xD5,           // Set display clock divide ratio/oscillator frequency
    0xF0,           // Set divide ratio
    0xDA, 0x12,     // Set com pins hardware configuration
    0xDB, 0x20,     // Set vcomh//0x20,0.77xVcc
    0x8D, 0x14,     // Set DC-DC enable
    0x81, 0xFF,     // Set contrast to full
    0xAF            // Turn on oled panel
};

void oled_prepare() {
    OLED_LEN = 0;
}

void oled_push_byte(uint8_t b) {
    if (OLED_LEN < 160) {
        OLED_BUF[OLED_LEN++] = b;
    }
}

void oled_send() {
    i2c_send_buffer(OLED_ADDR, OLED_BUF, OLED_LEN);
}

void oled_send_buffer(uint8_t *buf, uint8_t len) {
    i2c_send_buffer(OLED_ADDR, buf, len);
}

void oled_init() {
    oled_send_buffer(INIT_DATA, sizeof(INIT_DATA));
}

void oled_pos(uint8_t x, uint8_t y) {
    if (x > 31) {
        return;
    }
    if (y > 7) {
        return;
    }
    x *= 8;
    oled_prepare();
    oled_push_byte(OLED_CMD);
    oled_push_byte(0xB0 | (y & 0x0F));
    oled_push_byte(((x & 0xF0) >> 4) | 0x10);
    oled_push_byte((x & 0x0F));
    oled_send();
}

void oled_putc(unsigned char c) {
    oled_prepare();
    oled_push_byte(OLED_DATA);
    /* uint16_t offset = (uint16_t) c * 5; */
    for (int i = 0; i < 5; i ++) {
        oled_push_byte(pgm_read_byte(&OLED_FONT[c * 5 + i]));
    }
    oled_push_byte(0);
    oled_push_byte(0);
    oled_push_byte(0);
    oled_send();
}

void oled_clear() {
    oled_pos(0, 0);
    oled_prepare();
    oled_push_byte(OLED_DATA);
    for (uint8_t x = 0; x < 128; x ++) {
        oled_push_byte(0);
    }
    for (uint8_t y = 0; y < 8; y ++) {
        oled_send();
    }
}
