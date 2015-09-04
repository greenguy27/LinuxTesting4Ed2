#!/bin/bash
##########################################################################
# This is the main script that executes a menu to select applications to
# install. After that, it starts the installation and configuration
# process and finally it shows a log file which contains reported
# installation steps and posible errors.
#
# Author: Chris Ross
# Version: 1.0
# Last modified date (dd/mm/yyyy): 9/3/2015
# Licence: MIT
##########################################################################

if [[ $(getconf LONG_BIT) = "64" ]]
then
    echo "64bit Detected" &&
    echo "Linux Computers" &&
    wget https://tn.misttest.com/Apps/Html/MistKiosk_amd64.deb &&
    sudo dpkg -i MistKiosk_amd64.deb &&
    rm -f MistKiosk_amd64.deb
else
    echo "32bit Detected" &&
    echo "Linux Computers" &&
    wget https://tn.misttest.com/Apps/Html/MistKiosk_i386.deb &&
    sudo dpkg -i MistKiosk_i386.deb &&
    rm -f MistKiosk_i386.deb
fi
