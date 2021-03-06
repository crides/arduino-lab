#define F_CPU 16000000

#include <stdio.h>
#include <stdint.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>

#include "i2c.h"
#include "oled.h"

static int _oled_putc(char c, FILE *f);
static int _usart_putc(char c, FILE *f);
static FILE stdout_oled = FDEV_SETUP_STREAM(_oled_putc, NULL, _FDEV_SETUP_WRITE);
static FILE stdout_uart = FDEV_SETUP_STREAM(_usart_putc, NULL, _FDEV_SETUP_WRITE);

void usart_init() {
    // Enable receiver and transmitter
    UCSR0A = _BV(U2X0);
    UCSR0B = _BV(RXEN0) | _BV(TXEN0);
    // 8 data bits, 1 stop bit, no parity bits
    UCSR0C = _BV(USBS0) | _BV(UCSZ01) | _BV(UCSZ00);
    // Set 9600 baud rate
    UBRR0H = 0;
    UBRR0L = 207;
}

void usart_putc(uint8_t c) {
    while (!(UCSR0A & _BV(UDRE0)));
    UDR0 = c;
}

static int _usart_putc(char c, FILE *f) {
    usart_putc(c);
    return 0;
}

static int _oled_putc(char c, FILE *f) {
    oled_putc(c);
    return 0;
}

void t0_init() {
    TCCR0B = 0x05;  // Prescaler = 1/1024
    TIMSK0 = 0x01;  // Enable interrupt
}

ISR(TIMER0_OVF_vect) {
    static uint8_t counter = 0, led = 0;
    TIFR0 = 0;
    counter ++;
    if (counter >= (F_CPU / 10 * 3 / 1024 / 256)) {     // 300ms period
        counter = 0;
        led ++;
        if (led == 5) {
            led = 0;
        }
        uint8_t bits = 1 << led;
        PORTD = (bits & 0x10) | (bits & 0x08) << 2 | (bits & 0x04) << 4 | (bits & 0x02) << 6;
        PORTB = bits & 0x01;
    }
}

void io_init() {
    DDRD = _BV(DDD4) | _BV(DDD5) | _BV(DDD6) | _BV(DDD7);
    DDRB = _BV(DDB0) | _BV(DDB1) | _BV(DDB2);
    PORTD |= _BV(PORTD2) | _BV(PORTD3);
}

void adc_init() {
    ADMUX = _BV(REFS0);
    ADCSRA = _BV(ADEN) | _BV(ADPS2) | _BV(ADPS1) | _BV(ADPS0);
    ADCSRB = 0;
}

uint16_t adc_read() {
    ADCSRA |= _BV(ADSC);
    while (!(ADCSRA & _BV(ADIF)));
    uint8_t low = ADCL;
    uint8_t high = ADCH;
    return high << 8 | low;
}

#define SERVO_MAX 4800  // Values took from Arduino Servo library
#define SERVO_MIN 1088  // Reason unknown
void servo_init() {
    // COM1A = COM1B = 10, OC1A and OC1B connect to PWM signal 
    // WGM1 = 1110, Fast PWM mode, top is ICR1
    // CS = 010, F_CPU / 8, 50Hz with ICR1 = 40_000
    TCCR1A = _BV(COM1A1) | _BV(COM1B1) | _BV(WGM11);
    TCCR1B = _BV(WGM13) | _BV(WGM12) | _BV(CS11);
    ICR1H = (40000 >> 8) & 0xFF;
    ICR1L = 40000 & 0xFF;
    TIMSK1 = 0;
    OCR1AH = (3000 >> 8) & 0xFF;
    OCR1AL = 3000 & 0xFF;
    OCR1BH = OCR1AH;
    OCR1BL = OCR1AL;
}

void servo_write1(uint8_t _val) {
    if (_val > 180) {
        _val = 180;
    }
    uint16_t val = _val;
    uint16_t oc = (SERVO_MAX - SERVO_MIN) / 180 * val + SERVO_MIN;
    OCR1AH = oc >> 8;
    OCR1AL = oc;
}

void servo_write2(uint8_t _val) {
    if (_val > 180) {
        _val = 180;
    }
    uint16_t val = _val;
    uint16_t oc = (SERVO_MAX - SERVO_MIN) / 180 * val + SERVO_MIN;
    OCR1BH = oc >> 8;
    OCR1BL = oc;
}

int main() {
    io_init();
    sei();
    t0_init();
    adc_init();
    servo_init();
    stdout = &stdout_oled;
    usart_init();
    i2c_init();
    oled_init();
    _delay_ms(200);
    oled_clear();
    oled_pos(0, 0);
    printf(__DATE__);
    oled_pos(0, 1);
    printf(__TIME__);

    for (;;) {
        PORTD |= _BV(PORTD2) | _BV(PORTD3);
        ADMUX = (ADMUX & 0xF0) | 0x01;
        uint16_t x = adc_read();
        ADMUX = (ADMUX & 0xF0) | 0x00;
        uint16_t y = adc_read();
        uint8_t btn1 = PIND & _BV(PIND3) ? 1 : 0;
        uint8_t btn2 = PIND & _BV(PIND2) ? 1 : 0;
        servo_write1((uint32_t) x * 180 / 1024);
        servo_write2((uint32_t) y * 180 / 1024);
        oled_clear();
        oled_pos(0, 2);
        printf("X: %u", x);
        oled_pos(0, 3);
        printf("Y: %u", y);
        oled_pos(0, 4);
        printf("btn1: %u", btn1);
        oled_pos(0, 5);
        printf("btn2: %u", btn2);
    }
}
