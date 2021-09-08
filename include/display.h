#include <ILI9486_DRIVER.h>

#define MINPRESSURE 50
#define TS_EEPROM_SP 50 // touch screen EEPROM start position
#define XP TFT_D0
#define YP TFT_CS
#define XM TFT_DC
#define YM TFT_D1

void setupDisplay();
void updateTsRaw();
void calibrate();

int touchGetX();
int touchGetY();
int touchGetZ();