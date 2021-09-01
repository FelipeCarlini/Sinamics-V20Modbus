#include <Arduino.h>
#include <SPI.h>
#include <TFT_eSPI.h>
#include <TouchScreen.h>
#include <display.h>
#include <EEPROM.h>
#include <stdint.h>

#define TS_MINX 118
#define TS_MINY 92
#define TS_MAXX 906
#define TS_MAXY 951

#define EEPROM_SIZE 100

TFT_eSPI tft = TFT_eSPI();
TouchScreen ts = TouchScreen(XP, YP, XM, YM, 300);
TSPoint p;

typedef union {
    int16_t value;
    char byte[2];
} eeprom_u;


void setupTouchScreen();
void setupLCD();
void calibrate();
void writeCalibrateVluesEEPROM(int16_t x_min, int16_t x_max, int16_t y_min, int16_t y_max);
void writeIntEEPROM(unsigned int pos, int16_t value);
void writeEEPROM(unsigned int pos, char value);
void setCalibrationVlues();
bool shouldCalibrate();
int16_t readIntEEPROM(unsigned int pos);

int16_t calibrate_min_x;
int16_t calibrate_max_x;
int16_t calibrate_min_y;
int16_t calibrate_max_y;

void setupDisplay()
{
    EEPROM.begin(EEPROM_SIZE);
    setupLCD();
    setupTouchScreen();
}

// LCD
void setupLCD()
{
    tft.init();
    tft.setRotation(1);
    tft.fillScreen(0);
}

// Touch
void setupTouchScreen()
{
    calibrate();
    setCalibrationVlues();
}

void updateTsRaw()
{
    p = ts.getPoint();
    pinMode(XM, OUTPUT);
    digitalWrite(XM, LOW);
    pinMode(YP, OUTPUT);
    digitalWrite(YP, HIGH);
    pinMode(YM, OUTPUT);
    digitalWrite(YM, LOW);
    pinMode(XP, OUTPUT);
    digitalWrite(XP, HIGH);
}

void println(String str) {
    tft.println(str);
}
void clearScreen() {
    tft.setCursor(0, 0, 2);
    tft.setTextColor(TFT_WHITE,TFT_BLACK);
    tft.setTextSize(2);
}

void calibrate()
{
    if (shouldCalibrate()) {
        tft.setTextSize(2);
        tft.println(" Presionar todo el contorno del display\n Luego reiniciar");
        int16_t x_min, x_max, y_min, y_max;
        bool calibrate_started=false;
        while (true) {
            updateTsRaw();
            int x_vlue = p.y;
            int y_vlue = p.x;
            bool change_calibrate_vlues = false;
            if (touchGetZ() >= 75) {
                if (!calibrate_started) {
                    x_min = x_vlue;
                    x_max = x_vlue;
                    y_min = y_vlue;
                    y_max = y_vlue;
                    calibrate_started = true;
                } else {
                    if (x_vlue > x_max && x_vlue < 1023) {
                        x_max = x_vlue;
                        change_calibrate_vlues = true;
                    }
                    if (x_vlue < x_min && x_vlue < 1023){
                        x_min = x_vlue;
                        change_calibrate_vlues = true;
                    }
                    if (y_vlue > y_max && y_vlue < 1023) {
                        y_max = y_vlue;
                        change_calibrate_vlues = true;
                    }
                    if (y_vlue < y_min && y_vlue < 1023) {
                        y_min = y_vlue;
                        change_calibrate_vlues = true;
                    }
                    if(change_calibrate_vlues) {
                        writeCalibrateVluesEEPROM(x_min, x_max, y_min, y_max);
                    }
                 }
            }
        }
    }
}

void writeCalibrateVluesEEPROM(int16_t x_min, int16_t x_max, int16_t y_min, int16_t y_max)
{
    unsigned int pos = TS_EEPROM_SP;
    writeEEPROM(pos, 1);
    pos++;
    writeIntEEPROM(pos, x_min);
    pos=pos+2;
    writeIntEEPROM(pos, x_max);
    pos=pos+2;
    writeIntEEPROM(pos, y_min);
    pos=pos+2;
    writeIntEEPROM(pos, y_max);
    EEPROM.commit();
}

void writeIntEEPROM(unsigned int pos, int16_t value) {
    eeprom_u aux_union;
    aux_union.value = value;
    writeEEPROM(pos, aux_union.byte[0]);
    writeEEPROM(pos+1, aux_union.byte[1]);
}

void writeEEPROM(unsigned int pos, char value)
{    
    if(EEPROM.read(pos) != value) {
        EEPROM.write(pos, value);
    }
}

bool shouldCalibrate()
{
    if(EEPROM.read(TS_EEPROM_SP) != 1) {
        return true;
    }
    return false;
}

void setCalibrationVlues() {
    unsigned int pos = TS_EEPROM_SP;
    pos ++;
    calibrate_min_x = readIntEEPROM(pos);
    pos = pos + 2;
    calibrate_max_x = readIntEEPROM(pos);
    pos = pos + 2;
    calibrate_min_y = readIntEEPROM(pos);
    pos = pos + 2;
    calibrate_max_y = readIntEEPROM(pos);
}

int16_t readIntEEPROM(unsigned int pos) {
    eeprom_u aux_union;
    aux_union.byte[0] = EEPROM.read(pos);
    aux_union.byte[1] = EEPROM.read(pos+1);
    return aux_union.value;
}


int touchGetX()
{
    return map(p.y, calibrate_min_x, calibrate_max_x, 0, tft.width());
}

int touchGetY()
{
    return map(p.x, calibrate_min_y, calibrate_max_y, 0, tft.height());
}

int touchGetZ()
{
    return abs(p.z);
}