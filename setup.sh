#!/bin/bash

passwd
apk upgrade
adduser -h /home/wcs -s /bin/ash wcs
apk add sudo
echo '%wheel ALL=(ALL) ALL'> /etc/sudoers.d/wheel
adduser wcs wheel
sudo -i
