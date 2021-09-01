import shutil
from pathlib import Path

dest_path = './.pio/libdeps/esp32dev/TFT_eSPI/User_Setup.h'
if not Path(dest_path).exists():
    exit()
shutil.copy(Path('./include/ILI9486_DRIVER.h'), Path(dest_path))
