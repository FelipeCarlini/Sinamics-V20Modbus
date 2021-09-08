#include <Arduino.h>
#include <ILI9486_DRIVER.h>
#include <TFT_eSPI.h>
#include <display.h>
#include <user_interface.h>
#include <buttons.h>

void setup() {
  setupUI();
  setupDisplay();
  setupHardwareButtons();
}

void loop() {
  runUI();
}
