#include <Arduino.h>
#include <ILI9486_DRIVER.h>
#include <TFT_eSPI.h>
#include <display.h>
#include <user_interface.h>
#include <sinamics_v20.h>
#include <buttons.h>

void setup() {
  setupUI();
  setupDisplay();
  setupHardwareButtons();
  setupRS485();
  stopMotor();
}

void loop() {
  runUI();
}
