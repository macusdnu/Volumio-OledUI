#!/bin/bash
set +e #
echo ""
echo -e " _   _       _                 _         _   _ _____ "
echo -e "| | | |     | |               (_)       | | | |_   _|"
echo -e "| | | | ___ | |_   _ _ __ ___  _  ___   | | | | | |  "
echo -e "| | | |/ _ \| | | | | '_ ' _ \| |/ _ \  | | | | | |  "
echo -e "\ \_/ / (_) | | |_| | | | | | | | (_) | | |_| |_| |_ "
echo -e " \___/ \___/|_|\__,_|_| |_| |_|_|\___/   \___/ \___/ "                                                    
echo ""
echo -e "Setting up dependencies"
echo ""
sudo dpkg-reconfigure tzdata
sudo apt-get update
sudo apt-get install -y python3-setuptools python3-pip python-rpi.gpi
sudo pip3 install pycurl rpi.gpio psutil socketIO-client pycurl gpiozero readchar numpy requests luma.lcd readchar pillow
sudo apt-get install -y libfftw3-dev libasound2-dev libncursesw5-dev libpulse-dev libtool libiniparser-dev libsdl2-2.0-0 libsdl2-dev libffi-dev libbz2-dev libexpat1-dev liblzma-dev libncurses5-dev libncursesw5-dev libreadline-dev libdb5.3-dev libgdbm-dev libsqlite3-dev libfreetype6-dev libatlas-base-dev libjpeg-dev libfftw3-dev libasound2-dev libncursesw5-dev libtool libcurl4 libssl-dev git autoconf automake make m4 #
sudo pip3 install -U pip
sudo pip3 install -U setuptools
sudo pip3 install --upgrade setuptools pip wheel
sudo pip3 install --upgrade luma.oled
sudo echo "dtparam=spi=on" >> /boot/userconfig.txt
sudo echo "dtparam=i2c=on" >> /boot/userconfig.txt
git clone https://github.com/macusdnu/Volumio-OledUI.git
sudo chmod +x  ~/Volumio-OledUI/oledui.py
sudo cp -f ~/Volumio-OledUI/oledui.service /lib/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable oledui.service
sudo reboot
