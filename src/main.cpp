#include <Arduino.h>
#include <ILI9486_DRIVER.h>
#include <TFT_eSPI.h>
#include <display.h>
#include <user_interface.h>

void setup() {
  setupDisplay();
  setupUI();
}

void loop() {
  runUI();
}
