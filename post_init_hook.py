import shutil
from pathlib import Path

dest_path = './.pio/libdeps/esp32dev/TFT_eSPI/User_Setup.h'
if Path(dest_path).exists():
    shutil.copy(Path('./include/ILI9486_DRIVER.h'), Path(dest_path))
