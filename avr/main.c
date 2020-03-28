#define F_CPU 16000000

#include <stdio.h>
#include <stdint.h>
#include <avr/io.h>
#include <util/delay.h>

static int _usart_putc(char c, FILE *f);
static FILE mystdout = FDEV_SETUP_STREAM(_usart_putc, NULL, _FDEV_SETUP_WRITE);

void usart_init() {
    // Enable receiver and transmitter
    UCSR0A = _BV(U2X0);
    UCSR0B = _BV(RXEN0) | _BV(TXEN0);
    // 8 data bits, 1 stop bit, no parity bits
    UCSR0C = _BV(USBS0) | _BV(UCSZ01) | _BV(UCSZ00);
    // Set 9600 baud rate
    UBRR0H = 0;
    UBRR0L = 207;

    stdout = &mystdout;
}

void usart_putc(uint8_t c) {
    while (!(UCSR0A & _BV(UDRE0)));
    UDR0 = c;
}

static int _usart_putc(char c, FILE *f) {
    usart_putc(c);
    return 0;
}

void io_init() {
    DDRD = _BV(DDD4) | _BV(DDD5) | _BV(DDD6) | _BV(DDD7);
    DDRB = _BV(DDB0) | _BV(DDB1) | _BV(DDB3);
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
    OCR1BH = (3000 >> 8) & 0xFF;
    OCR1BL = 3000 & 0xFF;
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
    adc_init();
    /* servo_init(); */
    usart_init();
    printf("asdf\n");

    _delay_ms(200);
    for (;;) {
        ADMUX = (ADMUX & 0xF0) | 0x01;
        uint16_t x = adc_read();
        ADMUX = (ADMUX & 0xF0) | 0x00;
        uint16_t y = adc_read();
        printf("x: %hu, y: %hu\n", x, y);
        _delay_ms(200);
    }
}
