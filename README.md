# Volumio-OledUI
This project is based on https://github.com/diehardsk/Volumio-OledUI.git but with code adaptation to run on 
Volumio3 images

## hardware
* Raspberry Pi 2B/3B with Volumio3 image
* 3.2" 256x64 Pixels 4-wire SPI OLED Display with SSD1322 controller IC (e.g. ER-OLEDM032-1W)

## dependencies
* [RPi.GPIO](https://sourceforge.net/p/raspberry-gpio-python/wiki/Home/)
* [socketIO-client](https://pypi.org/project/socketIO-client/)
* PIL
* [luma.oled](https://luma-oled.readthedocs.io/)

## install
All software dependencies are resolved during install process using the script "install_oled_ui.sh"

### how to check the logs
```
sudo journalctl -fu oledui.service
```
The project is provided as is, can be modified or redistributed free of charge.
Is not intended for commercial use.

Enjoy!
