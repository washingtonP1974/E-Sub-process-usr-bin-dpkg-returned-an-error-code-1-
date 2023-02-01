#!/bin/bash

sudo mv /var/lib/dpkg/info /var/lib/dpkg/info_silent
sudo mkdir /var/lib/dpkg/info
sudo apt-get update
sudo apt-get -f install
sudo mv /var/lib/dpkg/info/* /var/lib/dpkg/info_silent
sudo rm -rf /var/lib/dpkg/info
sudo mv /var/lib/dpkg/info_silent /var/lib/dpkg/info
sudo apt-get --fix-missing update
sudo apt-get install -f
sudo dpkg --configure -a
sudo apt-get clean
sudo apt-get update
sudo apt-get upgrade
sudo apt-get full-upgrade
sudo apt-get dist-upgrade
sudo apt-get clean
sudo apt-get autoclean

