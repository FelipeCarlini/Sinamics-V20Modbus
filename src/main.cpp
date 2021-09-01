#include <Arduino.h>
#include <User_Setup.h>
#include <TFT_eSPI.h>
#include <display.h>


int xMax, xMin, maxMinInit=0;

void setup() {
  setupDisplay();
}

void loop() {
  updateTsRaw();
  if(touchGetZ() > 75) {
    clearScreen();
    println(String(touchGetX()) + "        ");
    println(String(touchGetY()) + "        ");
  }
}
