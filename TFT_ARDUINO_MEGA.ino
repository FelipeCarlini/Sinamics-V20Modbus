//Programa: Display LCD Touch TFT 3.5"
//Autor: Felipe Carlini

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

// SELECTION BTNS
ButtonClass TimeArray[4];
ButtonClass SpeedArray[4];
ButtonClass SubmitBtn;

// MENU BTNS
ButtonClass ConfigArray[2];
ButtonClass SelectionBtn;

// CONFIG BTNS
ButtonClass ConfigTimeArray[4];
ButtonClass ConfigSpeedArray[4];

// VALUES BTNS (allows to modify values)
ButtonClass PercentageValues[2];
ButtonClass PercentageTenValues[2]; // 10% operations
ButtonClass MinuteValues[2];
ButtonClass SecondValues[2];


#include <MCUFRIEND_kbv.h>
#include <Adafruit_GFX.h>
#include <TouchScreen.h>
#include <EEPROM.h>

#define YP A3 // Y+ is on Analog1
#define XM A2 // X- is on Analog2
#define YM 9 // Y- is on Digital7
#define XP 8 // X+ is on Digital6

#define TS_MINX 118
#define TS_MINY 92
#define TS_MAXX 906
#define TS_MAXY 951

TouchScreen ts = TouchScreen(XP, YP, XM, YM, 300);

#define LCD_RESET A4
#define LCD_CS A3
#define LCD_CD A2
#define LCD_WR A1
#define LCD_RD A0

#define BLACK   0x0000
#define BLUE    0x001F
#define RED     0xF800
#define GREEN   0x07E0
#define CYAN    0x07FF
#define MAGENTA 0xF81F
#define YELLOW  0xFFE0
#define WHITE   0xFFFF

MCUFRIEND_kbv tft;

#define MINPRESSURE 5
#define MAXPRESSURE 5000

#define SelectionMenu 0
#define ConfigTimeMenu 1
#define ConfigSpeedMenu 2

#define SUBTRACT 0
#define ADD 1

short int menu=0;

// function prototypes
void initializeButtons(ButtonClass ButtonArray[], int y_offset, char text_header, int offsetBtnStringX, int offsetBtnStringY, short int btnQty, short int separation, short int Height, bool render);
void initializeValuesButtons(ButtonClass ButtonArray[], short int x_offset, short int y_offset, short int Width=75, short int Height=60);
void renderButtontext(ButtonClass button, short int color, short int textSize);
void renderText(int x0,short int y0, short int color, short int textSize, String text);
void onSelectSelectionButton(ButtonClass ButtonArray[], int touchedBtn);
void renderSelectedValues(int color, short int textSize, short int x0, short int y0);
void renderConfig(short int configBtn);
void renderButton(ButtonClass Button, int color, short int textSize=2);
void renderBtnArray(ButtonClass ButtonArray[], int btnQty, short int textSize=2);
void changeValueSelectedButton(ButtonClass ButtonArray[], int value);
void setupEEPROM();
void cleanEEPROM();
void renderConfigTime();
void renderConfigSpeed();
int checkButtonTouched(ButtonClass ButtonArray[], short int btnQty ,int xVlue, int yVlue);
int getSelectedButton(ButtonClass ButtonArray[], short int btnQty);
int getBtnValue(ButtonClass button);
String formatTime(int seconds);

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
BtnTimeOut ValueBtnTimeOut;

void setup() {
  Serial.begin(9600);
  tft.reset();
  uint16_t identifier = tft.readID();

  tft.begin(identifier);
  tft.fillScreen(BLACK);
  tft.setRotation(1);
  
  //display 480 * 320
  ConfigArray[0].btnText = "Tiempos";
  ConfigArray[1].btnText = "Velocidades";
  SubmitBtn.btnText = "Iniciar";
  SelectionBtn.btnText = "Volver a la seleccion";

  initializeButtons(ConfigArray, 10, '\0', 41, 19, 2, 10, 50, true);
  initializeButtons(TimeArray, 70, 'T', 42, 33, 4, 10, 85, true);
  initializeButtons(SpeedArray, 165, 'V', 42, 33, 4, 10, 85, true);
  initializeButtons(&SubmitBtn, 260, '\0', 41, 19, 1, 10, 50, true);
  initializeButtons(&SelectionBtn, 10, '\0', 41, 19, 1, 10, 50, false);
  initializeButtons(ConfigTimeArray, 70, 'T', 42, 33, 4, 10, 85, false);
  initializeButtons(ConfigSpeedArray, 70, 'V', 42, 33, 4, 10, 85, false);
  initializeValuesButtons(PercentageValues, 250, 170);
  initializeValuesButtons(PercentageTenValues, 250, 245);
  initializeValuesButtons(SecondValues, 250, 170);
  initializeValuesButtons(MinuteValues, 250, 245);
  setupEEPROM();
  cleanEEPROM();

  onSelectSelectionButton(ConfigTimeArray, 0);
  onSelectSelectionButton(ConfigSpeedArray, 0);
  onSelectSelectionButton(TimeArray, 0);
  onSelectSelectionButton(SpeedArray, 0);

  renderSelectedValues(WHITE, 2, 240, SubmitBtn.y0string);
}

void loop() {
  TSPoint p = ts.getPoint();
  pinMode(XM, OUTPUT);
  digitalWrite(XM, LOW);
  pinMode(YP, OUTPUT);
  digitalWrite(YP, HIGH);
  pinMode(YM, OUTPUT);
  digitalWrite(YM, LOW);
  pinMode(XP, OUTPUT);
  digitalWrite(XP, HIGH);
  ValueBtnTimeOut.verifyTimeOut();

  if (p.z > MINPRESSURE && p.z < MAXPRESSURE) {
    int xVlue, yVlue, timeButton, speedButton, configButton;
    short int minuteButton, secondButton, percentageButton, percentageTenButton;
    xVlue = (abs(map(p.y, TS_MINY, TS_MAXY, tft.width(), 0)));
    yVlue = (abs(map(p.x, TS_MINX, TS_MAXX, tft.height(), 0)));

    if(menu == SelectionMenu) {
      timeButton = checkButtonTouched(TimeArray, 4, xVlue, yVlue);
      speedButton = checkButtonTouched(SpeedArray, 4, xVlue, yVlue);
      configButton = checkButtonTouched(ConfigArray, 2, xVlue, yVlue);
      if(timeButton != -1) {
        onSelectSelectionButton(TimeArray, timeButton);
        renderSelectedValues(WHITE, 2, 240, SubmitBtn.y0string);
      }
      if(speedButton != -1) {
        onSelectSelectionButton(SpeedArray, speedButton);
        renderSelectedValues(WHITE, 2, 240, SubmitBtn.y0string);
      }
      if(configButton != -1) {
        menu = configButton + 1;
        renderConfig(configButton); // 0: Times 1: Speeds
      }
    }else if(menu != SelectionMenu) {
      if(checkButtonTouched(&SelectionBtn, 1, xVlue, yVlue) != -1){
        menu = SelectionMenu;
        renderSelection();
      }
      if(menu == ConfigTimeMenu) {
        timeButton = checkButtonTouched(ConfigTimeArray, 4, xVlue, yVlue);
        minuteButton = checkButtonTouched(MinuteValues, 2, xVlue, yVlue);
        secondButton = checkButtonTouched(SecondValues, 2, xVlue, yVlue);
        if (minuteButton != -1 || secondButton != -1){
          if (secondButton == ADD) {
            changeValueSelectedButton(ConfigTimeArray, 1);
            ValueBtnTimeOut.setTimeOut(SecondValues[ADD]);
          } else if (secondButton == SUBTRACT) {
            changeValueSelectedButton(ConfigTimeArray, -1);
            ValueBtnTimeOut.setTimeOut(SecondValues[SUBTRACT]);
          } else if (minuteButton == ADD) {
            changeValueSelectedButton(ConfigTimeArray, 60);
            ValueBtnTimeOut.setTimeOut(MinuteValues[ADD]);
          } else if (minuteButton == SUBTRACT) {
            changeValueSelectedButton(ConfigTimeArray, -60);
            ValueBtnTimeOut.setTimeOut(MinuteValues[SUBTRACT]);
          }
          delay(65);
          renderConfigTime();
        }
        if(timeButton != -1) {
          onSelectSelectionButton(ConfigTimeArray, timeButton);
          renderConfigTime();
        }
      }else if(menu == ConfigSpeedMenu) {
        speedButton = checkButtonTouched(ConfigSpeedArray, 4, xVlue, yVlue);
        percentageButton = checkButtonTouched(PercentageValues, 2, xVlue, yVlue);
        percentageTenButton = checkButtonTouched(PercentageTenValues, 2, xVlue, yVlue);
        if (percentageButton != -1 || percentageTenButton != -1){
          if (percentageButton == ADD) {
            changeValueSelectedButton(ConfigSpeedArray, 1);
            ValueBtnTimeOut.setTimeOut(PercentageValues[ADD]);
          } else if (percentageButton == SUBTRACT) {
            changeValueSelectedButton(ConfigSpeedArray, -1);
            ValueBtnTimeOut.setTimeOut(PercentageValues[SUBTRACT]);
          } else if (percentageTenButton == ADD) {
            changeValueSelectedButton(ConfigSpeedArray, 10);
            ValueBtnTimeOut.setTimeOut(PercentageTenValues[ADD]);
          } else if (percentageTenButton == SUBTRACT) {
            changeValueSelectedButton(ConfigSpeedArray, -10);
            ValueBtnTimeOut.setTimeOut(PercentageTenValues[SUBTRACT]);
          }
          delay(65);
          renderConfigSpeed();
        }
        if(speedButton != -1) {
          onSelectSelectionButton(ConfigSpeedArray, speedButton);
          renderConfigSpeed();
        }
      }
    }
  }
}

void setupEEPROM() {
  for(short int i=0; i<4; i++) {
    SpeedArray[i].EEPROMAddress = i;
    ConfigSpeedArray[i].EEPROMAddress = i;
  }
  for(short int i=0; i<4; i++) {
    TimeArray[i].EEPROMAddress = i*2 + 4;
    ConfigTimeArray[i].EEPROMAddress = i*2 + 4;
    TimeArray[i].EEPROMAddressTwo = i*2 + 5;
    ConfigTimeArray[i].EEPROMAddressTwo = i*2 + 5;
  }
}

void cleanEEPROM() {
  // sets EEPROM 0x00 for ilegal values
  for(short int i=0; i<4; i++) {
    if(EEPROM.read(SpeedArray[i].EEPROMAddress) > 255) {
      EEPROM.write(SpeedArray[i].EEPROMAddress, 0);
    }
  }
  for(short int i=0; i<4; i++) {
    unsigned int seconds = (unsigned int) EEPROM.read(TimeArray[i].EEPROMAddress) * 256 + (unsigned int) EEPROM.read(TimeArray[i].EEPROMAddressTwo);
    if(seconds > 3600) {
      EEPROM.write(TimeArray[i].EEPROMAddress, 0);
      EEPROM.write(TimeArray[i].EEPROMAddressTwo, 0);
    }
  }
}

void renderSelection() {
  renderButton(SelectionBtn, BLUE);
  delay(300);
  tft.fillScreen(BLACK);
  renderBtnArray(ConfigArray, 2);
  renderBtnArray(TimeArray, 4);
  renderBtnArray(SpeedArray, 4);
  renderButton(SubmitBtn, BLACK);
  renderSelectedValues(WHITE, 2, 240, SubmitBtn.y0string);
}

void renderButton(ButtonClass Button, int color, short int textSize=2) {
  tft.fillRoundRect(Button.x0, Button.y0, Button.Width, Button.Height, 5, color);
  tft.drawRoundRect(Button.x0, Button.y0, Button.Width, Button.Height, 5, WHITE);
  renderButtontext(Button, WHITE, textSize);
}

void renderBtnArray(ButtonClass ButtonArray[], int btnQty, short int textSize=2) {
  for(int x=0; x < btnQty; x++) {
    if(ButtonArray[x].selected == true) {
      renderButton(ButtonArray[x], BLUE, textSize);
    }else {
      renderButton(ButtonArray[x], BLACK, textSize);
    }
  }
}

void initializeButtons(ButtonClass ButtonArray[], int y_offset, char text_header, int offsetBtnStringX, int offsetBtnStringY, short int btnQty, short int separation, short int Height, bool render) {
  short int Width = (tft.width() - ((btnQty + 1) * separation)) / btnQty;
  for(int x=0; x < btnQty; x++) {
    ButtonArray[x].x0 = separation * (x + 1) + (x * Width);
    ButtonArray[x].y0 = y_offset;
    ButtonArray[x].btnNumber = x;
    ButtonArray[x].Width = Width;
    ButtonArray[x].Height = Height;
    ButtonArray[x].x0string = offsetBtnStringX + ButtonArray[x].x0;
    ButtonArray[x].y0string = offsetBtnStringY + ButtonArray[x].y0;
    if(not ButtonArray[x].btnText.length()) {
      ButtonArray[x].btnText = String(text_header) + String(x+1);
    }
    if(render == true){
      renderButton(ButtonArray[x], BLACK);
    }
  }
}

void initializeValuesButtons(ButtonClass ButtonArray[], short int x_offset, short int y_offset, short int Width=75, short int Height=60) {
  ButtonArray[0].x0 = x_offset;
  ButtonArray[0].y0 = y_offset;
  ButtonArray[0].Width = Width; 
  ButtonArray[0].Height = Height;
  ButtonArray[0].x0string = 30 + ButtonArray[0].x0;
  ButtonArray[0].y0string = 20 + ButtonArray[0].y0;
  ButtonArray[0].btnText = '-';
  ButtonArray[1].x0 = x_offset + 140;
  ButtonArray[1].y0 = y_offset;
  ButtonArray[1].Width = Width; 
  ButtonArray[1].Height = Height;
  ButtonArray[1].x0string = 30 + ButtonArray[1].x0;
  ButtonArray[1].y0string = 20 + ButtonArray[1].y0;
  ButtonArray[1].btnText = '+';
}

int checkButtonTouched(ButtonClass ButtonArray[], short int btnQty ,int xVlue, int yVlue) {
  for(int x=0; x < btnQty; x++) {
     if((xVlue >= ButtonArray[x].x0) && (xVlue <= (ButtonArray[x].x0 + ButtonArray[x].Width))) {
      if((yVlue >= ButtonArray[x].y0)&& (yVlue <= (ButtonArray[x].y0 + ButtonArray[x].Height))) {
        return x;
      }
    }
  }
  return -1;
}

void renderButtontext(ButtonClass button, short int color, short int textSize) {
    tft.setTextColor(color);
    tft.setTextSize(textSize);
    tft.setCursor(button.x0string, button.y0string);
    tft.println(button.btnText);
}

void renderText(int x0,short int y0, short int color, short int textSize, String text) {
    tft.setTextColor(color, BLACK);
    tft.setTextSize(textSize);
    tft.setCursor(x0, y0);
    tft.println(text);
}

void onSelectSelectionButton(ButtonClass ButtonArray[], int touchedBtn) {
  if(ButtonArray[touchedBtn].selected == false){
    ButtonArray[touchedBtn].selected = true;
    renderButton(ButtonArray[touchedBtn], BLUE);
  }
  for(int x=0; x<4; x++){
    if(x != touchedBtn && ButtonArray[x].selected){
      renderButton(ButtonArray[x], BLACK);
      ButtonArray[x].selected = false;
    }
  }
}

void renderSelectedValues(int color, short int textSize, short int x0, short int y0) {
  // Selected BTN
  int selectedSpeed = getSelectedButton(SpeedArray, 4);
  int selectedTime = getSelectedButton(TimeArray, 4);
  // Selected BTN value
  selectedSpeed = getBtnValue(SpeedArray[selectedSpeed]);
  selectedTime = getBtnValue(TimeArray[selectedTime]);
  // format  T: 60m V: 100% (max char 14)
  String textDisplay = "T: " + formatTime(selectedTime) + " V: " + String(selectedSpeed) + "%";
  short int textLen = textDisplay.length();
  for(int i=0; i<(17 - textLen); i++) {
    textDisplay = " " + textDisplay;
  }
  renderText(x0, y0, color, 2, textDisplay);
}

int getSelectedButton(ButtonClass ButtonArray[], short int btnQty) {
  for(short int i=0; i<btnQty; i++) {
    if(ButtonArray[i].selected) {
      return i;
    }
  }
}

String formatTime(int seconds) {
  int minutesDisplay = seconds / 60;
  int secondsDisplay = seconds - minutesDisplay * 60;
  String res = "";
  if (minutesDisplay) {
    res += String(minutesDisplay) + "m";
  }
  res +=  String(secondsDisplay) + "s";
  return res;
}

int getBtnValue(ButtonClass button) {
  if(button.EEPROMAddressTwo == -1) {
    return EEPROM.read(button.EEPROMAddress);
  } else {
    return EEPROM.read(button.EEPROMAddress) * 256 + EEPROM.read(button.EEPROMAddressTwo);
  }
}

void renderConfig(short int configBtn) {
  renderButton(ConfigArray[configBtn], BLUE);
  delay(300);
  tft.fillScreen(BLACK);
  renderButton(SelectionBtn, BLACK);
  // the first config button is set as selected
  for(int x=0; x<3; x++){
    ConfigTimeArray[x+1].selected = false;
    ConfigSpeedArray[x+1].selected = false;
  }
  ConfigTimeArray[0].selected = true;
  ConfigSpeedArray[0].selected = true;
  
  if(configBtn == 0){
    renderBtnArray(ConfigTimeArray, 4);
    renderBtnArray(SecondValues, 2, 3);
    renderText(350, 187, WHITE, 3, "s");
    renderBtnArray(MinuteValues, 2, 3);
    renderText(350, 260, WHITE, 3, "m");
    renderConfigTime();
  }else if(configBtn == 1){
    renderBtnArray(ConfigSpeedArray, 4);
    renderBtnArray(PercentageValues, 2, 3);
    renderText(350, 190, WHITE, 3, "%");
    renderBtnArray(PercentageTenValues, 2, 3);
    renderText(341, 268, WHITE, 2, "10%");
    renderConfigSpeed();
  }
}

void renderConfigTime() {
  // Selected BTN
  int selectedTime = getSelectedButton(ConfigTimeArray, 4);
  // Selected BTN value
  selectedTime = getBtnValue(ConfigTimeArray[selectedTime]);
  String formatedTime = formatTime(selectedTime);
  short int x = (6 - formatedTime.length()) * 9;
  formatedTime = "  " + formatedTime + "  "; 
  renderText(38 + x, 225, WHITE, 3, formatedTime);
}

void renderConfigSpeed() {
  // Selected BTN
  int selectedSpeed = getSelectedButton(ConfigSpeedArray, 4);
  // Selected BTN value
  selectedSpeed = getBtnValue(ConfigSpeedArray[selectedSpeed]);
  String speed = String(selectedSpeed) + "%";
  short int x = (4 - speed.length()) * 9;
  speed = "  " + speed + "  "; 
  renderText(50 + x, 225, WHITE, 3, speed);
}

void changeValueSelectedButton(ButtonClass ButtonArray[], int value) {
  short int selectedButton = getSelectedButton(ButtonArray, 4);
  int aux;
  if (ButtonArray[selectedButton].EEPROMAddressTwo == -1) {
    aux = (unsigned int) EEPROM.read(ButtonArray[selectedButton].EEPROMAddress) + (unsigned int) value;
    if (aux > 100) {
      aux = 100;
    } else if (aux < 0) {
      aux = 0;
    }
    EEPROM.write(ButtonArray[selectedButton].EEPROMAddress, aux);
  } else {
    aux = (unsigned int) EEPROM.read(ButtonArray[selectedButton].EEPROMAddress) * 256 + (unsigned int) EEPROM.read(ButtonArray[selectedButton].EEPROMAddressTwo) + (unsigned int) value;
    if (aux > 3600) {
      aux = 3600;
    } else if (aux < 0) {
      aux = 0;
    }
    int firstAddressValue = aux / 256;
    int secondAddressValue = aux - (secondAddressValue * 256);
    EEPROM.write(ButtonArray[selectedButton].EEPROMAddress, firstAddressValue);
    EEPROM.write(ButtonArray[selectedButton].EEPROMAddressTwo, secondAddressValue);
  }
}
