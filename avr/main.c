#define F_CPU 16000000

#include <stdint.h>
#include <avr/io.h>
#include <util/delay.h>

void usart_init(unsigned int baud) {
    uint16_t ubrr = F_CPU / 16 / baud - 1;
    /*Set baud rate */
    UBRR0H = (unsigned char)(baud>>8);
    UBRR0L = (unsigned char)baud;
    /* Enable receiver and transmitter */
    UCSR0B = (1<<RXEN0)|(1<<TXEN0);
    /* Set frame format: 8data, 2stop bit */
    UCSR0C = (1<<USBS0)|(3<<UCSZ00);
}

void io_init() {
    DDRD = _BV(DDD4) | _BV(DDD5) | _BV(DDD6) | _BV(DDD7);
    DDRB = _BV(DDB0) | _BV(DDB1) | _BV(DDB3);
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
    OCR1AH = (oc >> 8) & 0xFF;
    OCR1AL = (oc) & 0xFF;
}

void servo_write2(uint8_t _val) {
    if (_val > 180) {
        _val = 180;
    }
    uint16_t val = _val;
    uint16_t oc = (SERVO_MAX - SERVO_MIN) / 180 * val + SERVO_MIN;
    OCR1BH = (oc >> 8) & 0xFF;
    OCR1BL = (oc) & 0xFF;
}

int main() {
    io_init();
    servo_init();
    /* usart_init(9600); */
    for (;;) {
        int16_t i;
        for (i = 0; i <= 180; i ++) {
            servo_write1(i);
            _delay_ms(20);
        }
        _delay_ms(3000);
        for (i = 180; i >= 0; i --) {
            servo_write1(i);
            _delay_ms(20);
        }
        _delay_ms(3000);
    }
    /* _delay_ms(200); */
    /* for (;;) { */
    /*     PIND = _BV(PIND4) | _BV(PIND6); */
    /*     _delay_ms(500); */
    /* } */
}
