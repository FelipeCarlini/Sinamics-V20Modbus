#include <Arduino.h>
#include <Wire.h>
#include <ModbusMaster.h>
#include <sinamics_v20.h>

ModbusMaster node;

void preTransmission();
void postTransmission();

void preTransmission()
{
  digitalWrite(MAX485_RE_NEG, 1);
  digitalWrite(MAX485_DE, 1);
  delay(10);
}

void postTransmission()
{
  digitalWrite(MAX485_RE_NEG, 0);
  digitalWrite(MAX485_DE, 0);
  delay(10);
}

void setupRS485() {
  pinMode(MAX485_RE_NEG, OUTPUT);
  pinMode(MAX485_DE, OUTPUT);
  digitalWrite(MAX485_RE_NEG, 0);
  digitalWrite(MAX485_DE, 0);

  Serial.begin(9600, SERIAL_8E1);
  node.begin(1, Serial);
  node.preTransmission(preTransmission);
  node.postTransmission(postTransmission);
}

uint8_t marchMotor(int speed) {
    uint8_t result;
    if(speed > 0) {
        node.writeSingleRegister(0x0063, 0x47F); //clock sense
    } else if (speed < 0) {
        node.writeSingleRegister(0x0063, 0xC7F); // inverse clock sense
    }
    result = node.writeSingleRegister(0x0064, map(abs(speed), 0, 100, 0, 16383));
    return result;
}

uint8_t stopMotor() {
    uint8_t result;
    node.writeSingleRegister(0x0064, 0);
    result = node.writeSingleRegister(0x0063, 0x047E);
    return result;
}