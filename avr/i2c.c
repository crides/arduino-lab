#include <avr/io.h>
#include <avr/interrupt.h>
#include <compat/twi.h>
#include <stdio.h>
#include <util/twi.h>
#include "i2c.h"

static uint8_t *I2C_BUF = 0;
static uint8_t I2C_LEN = 0;
static uint8_t I2C_IND = 0;
static uint8_t I2C_ADDR = 0;
static volatile uint8_t I2C_BUSY = 0;

#define F_CPU 16000000
#define F_I2C 100000

void i2c_init() {
    TWBR = ((F_CPU / F_I2C) - 16) / 2;
    TWCR = _BV(TWEN) | _BV(TWIE);
}

void i2c_send_buffer(uint8_t addr, uint8_t *buf, uint8_t len) {
    /* while (I2C_BUSY); */
    I2C_BUSY = 1;
    I2C_ADDR = addr;
    I2C_BUF = buf;
    I2C_LEN = len;
    TWCR |= _BV(TWSTA);
    while (I2C_BUSY);
}

ISR(TWI_vect) {
    uint8_t b;
    switch (TWSR & 0xF8) {
        case TW_START:     // sent start condition
            b = I2C_ADDR << 1;
            TWDR = b;
            TWCR &= ~(_BV(TWSTA));
            I2C_IND = 0;
            break;
        case TW_MT_SLA_ACK:  // slave receiver acked address
        case TW_MT_DATA_ACK: // slave receiver acked data
            if (I2C_IND < I2C_LEN) {
                b = I2C_BUF[I2C_IND++];
                TWDR = b;
            } else {
                TWCR |= _BV(TWSTO);
                I2C_BUSY = 0;
            }
            break;
        default:
            PIND |= _BV(PIND7);
            TWCR &= ~(_BV(TWSTA));
            TWCR &= ~(_BV(TWSTO));
            I2C_BUSY = 0;
            break;
    }
    TWCR |= _BV(TWINT);
}
