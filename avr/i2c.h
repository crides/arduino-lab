#ifndef _I2C_H_
#define _I2C_H_

#include <stdint.h>

void i2c_init();
void i2c_send_buffer(uint8_t addr, uint8_t *buf, uint16_t len);
void i2c_repeat(uint8_t addr, uint8_t c, uint16_t len);

#endif
