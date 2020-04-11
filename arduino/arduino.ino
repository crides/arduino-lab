#include <Servo.h>
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>

Servo servo1, servo2;
unsigned long t = 0;
int led = 0;
Adafruit_SSD1306 display(128, 64, &Wire, -1);

void setup() {
    Serial.begin(9600);
    while (!Serial);
    pinMode(2, INPUT_PULLUP);
    pinMode(3, INPUT_PULLUP);
    pinMode(4, OUTPUT);
    pinMode(5, OUTPUT);
    pinMode(6, OUTPUT);
    pinMode(7, OUTPUT);
    pinMode(8, OUTPUT);
    pinMode(9, OUTPUT);
    pinMode(10, OUTPUT);
    servo1.attach(9);
    servo2.attach(10);

    if(!display.begin(SSD1306_SWITCHCAPVCC, 0x3C)) {
      Serial.println(F("SSD1306 allocation failed"));
      while (1);
    }
    delay(200);
    display.clearDisplay();
    display.setTextSize(1); // Draw 2X-scale text
    display.setTextColor(SSD1306_WHITE);
}

void loop() {
    if (millis() - t > 300) {
        led ++;
        t = millis();
        if (led == 5) {
            led = 0;
        }
    }
    int bits = 1 << led;
    digitalWrite(4, (bits) & 0x01);
    digitalWrite(5, (bits >> 1) & 0x01);
    digitalWrite(6, (bits >> 2) & 0x01);
    digitalWrite(7, (bits >> 3) & 0x01);
    digitalWrite(8, (bits >> 4) & 0x01);

    int x = analogRead(A1);
    int y = analogRead(A0);
    servo1.write(map(x, 0, 1023, 0, 180));
    servo2.write(map(y, 0, 1023, 0, 180));

    display.clearDisplay();
    display.setCursor(0, 0);
    display.print("X: "); display.println(x);
    display.print("Y: "); display.println(y);
    display.print("btn1: "); display.println(digitalRead(3));
    display.print("btn2: "); display.println(digitalRead(2));
    display.display();
}
