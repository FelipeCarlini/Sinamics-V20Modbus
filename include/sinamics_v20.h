#define MAX485_DE      31
#define MAX485_RE_NEG  MAX485_DE

void setupRS485();
uint8_t marchMotor(int speed);
uint8_t stopMotor();