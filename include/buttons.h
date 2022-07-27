#define START_BUTTON 5
#define STOP_BUTTON 18
#define CALIBRATE_BUTTON 19

void setupHardwareButtons();

bool shouldStop();
bool shouldStart();
bool shouldCalibrateBtn();