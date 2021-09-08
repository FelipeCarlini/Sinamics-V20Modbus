#include <Arduino.h>
#include <buttons.h>
#include <display.h>

bool should_start;
bool should_stop;

void startMotorButton();
void stopMotorButton();

void setupHardwareButtons()
{
    pinMode(START_BUTTON, INPUT_PULLUP);
    pinMode(STOP_BUTTON, INPUT_PULLUP);
    pinMode(CALIBRATE_BUTTON, INPUT_PULLUP);

    attachInterrupt(digitalPinToInterrupt(START_BUTTON), startMotorButton, FALLING);
    attachInterrupt(digitalPinToInterrupt(STOP_BUTTON), stopMotorButton, FALLING);
    attachInterrupt(digitalPinToInterrupt(CALIBRATE_BUTTON), calibrate, FALLING);  
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
    return res;
}

bool shouldStop()
{
    bool res = should_stop;
    should_stop = false;
    return res;
}