#include <Arduino.h>
#include <buttons.h>
#include <display.h>

bool should_start = false;
bool should_stop = false;
bool should_calibrate = false;

void startMotorButton();
void stopMotorButton();
void startCalibration();

void setupHardwareButtons()
{
    pinMode(START_BUTTON, INPUT_PULLUP);
    pinMode(STOP_BUTTON, INPUT_PULLUP);
    pinMode(CALIBRATE_BUTTON, INPUT_PULLUP);

    attachInterrupt(digitalPinToInterrupt(START_BUTTON), startMotorButton, FALLING);
    attachInterrupt(digitalPinToInterrupt(STOP_BUTTON), stopMotorButton, FALLING);
    attachInterrupt(digitalPinToInterrupt(CALIBRATE_BUTTON), startCalibration, FALLING);  
}

void startCalibration()
{
    should_calibrate = true;
}

void startMotorButton()
{
    should_start = true;
}

void stopMotorButton()
{
    should_stop = true;
}

bool shouldStart()
{
    bool res = should_start;
    should_start = false;
    should_stop = false;
    return res;
}

bool shouldCalibrateBtn()
{
    bool res = should_calibrate;
    if (res) {
        should_calibrate = false;
    }
    return res;
}

bool shouldStop()
{
    bool res = should_stop;
    should_stop = false;
    should_start = false;
    return res;
}