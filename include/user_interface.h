#include <Arduino.h>

#define BLACK   0x0000
#define BLUE   0x0808
#define RED     0xF800
#define GREEN   0x8FFF
#define CYAN    0x07FF
#define MAGENTA 0xF81F
#define YELLOW  0xFFE0
#define WHITE   0xFFFF

class ButtonClass {
  public:
    int btnNumber;
    int Width=0, Height=0, x0, y0;
    int x0string, y0string;
    short int EEPROMAddress = -1;
    short int EEPROMAddressTwo = -1; // Two EEPROM addresses are needed for time values
    String btnText = "";
    bool selected=0; // 0: Not Selected 1: Selected
};

void renderButton(ButtonClass Button, int color, short int textSize=2);

class BtnTimeOut {
  // Turn down btns x ms after actived
  public:
    ButtonClass button;
    unsigned int lastButtonAddr = 0;
    unsigned long int time = -1;
    void setTimeOut(ButtonClass &btn) {
      if (this -> time == -1) {
        this -> setTime();
        this -> button = btn;
        this -> lastButtonAddr = (unsigned int) &btn;
        renderButton(this -> button, BLUE, 3);
      } else if (this -> lastButtonAddr == (unsigned int) &btn) {
        this -> time = millis();
      }
    }
    void setTime() {
      this -> time = millis();
    }
    void verifyTimeOut() {
      if (this -> time !=  -1) {
        if (this -> time + 150 <= millis()) {
          this -> time = -1;
          this -> timeOut();
        }
      }
    }
    void timeOut() {
      renderButton(this -> button, BLACK, 3);
    }
};

void initializeButtons(ButtonClass ButtonArray[], int y_offset, char text_header, int offsetBtnStringX, int offsetBtnStringY, short int btnQty, short int separation, short int Height, bool render);
void initializeValuesButtons(ButtonClass ButtonArray[], short int x_offset, short int y_offset, short int Width=75, short int Height=60);
void renderButtontext(ButtonClass button, short int color, short int textSize);
void renderText(int x0,short int y0, short int color, short int textSize, String text, int bg_color=BLACK);
void renderSelectedValues(int color, short int textSize, short int x0, short int y0, int bg_color=BLACK);
void onSelectSelectionButton(ButtonClass ButtonArray[], int touchedBtn);
void renderConfig(short int configBtn);
void renderBtnArray(ButtonClass ButtonArray[], int btnQty, short int textSize=2);
void changeValueSelectedButton(ButtonClass ButtonArray[], int value);
void runRoutine(ButtonClass* SubmitBtn, int speed, int time);
void setupEEPROM();
void cleanEEPROM();
void renderConfigTime();
void renderConfigSpeed();
int checkButtonTouched(ButtonClass ButtonArray[], short int btnQty ,int xVlue, int yVlue);
int getSelectedButton(ButtonClass ButtonArray[], short int btnQty);
int getBtnValue(ButtonClass button);
void renderSelection();
String formatTime(int seconds);
void setupUI();
void runUI();
void renderButton(ButtonClass Button, int color, short int textSize);
int tftWidth();
int tftHeight();
void fillScreen(int bg_color);
