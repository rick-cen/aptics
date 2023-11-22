#!/bin/bash

cd ~

sudo apt-get update
sudo apt-get install -y  git

sudo apt-get install -y  net-tools

sudo apt-get install -y  g++

sudo ufw disable

sudo apt-get install -y farpd

sudo apt-get install -y python2

sudo apt-get install -y python

cd ~

git clone https://github.com/DataSoft/Honeyd

sudo apt-get install -y libevent-dev libdumbnet-dev libpcap-dev libpcre3-dev libedit-dev bison flex libtool automake make zlib1g-dev

cd Honeyd
./autogen.sh
./configure
make
sudo make install

cd ~

sudo git clone https://github.com/rick-cen/aptics.git
sudo cp ~/aptics/snap7/build/bin/x86_64-linux/libsnap7.so-300 /usr/lib/libsnap7.so
cd ~/aptics/snap7/build/unix/
sudo make -f x86_64_linux.mk all
cd ~
cd ~/aptics/snap7/examples/cpp/x86_64-linux/
sudo make
cd ~
sudo mv ~/aptics/ot.conf ot.conf
sudo mv ~/aptics/run.sh run.sh
sudo chmod +x run.sh

echo " WELCOME TO"
sleep 0.1
echo "           _____ _______ _____ _____  _____ "
sleep 0.1
echo "     /\   |  __ \__   __|_   _/ ____|/ ____|"
sleep 0.1
echo "    /  \  | |__) | | |    | || |    | (___  "
sleep 0.1
echo "   / /\ \ |  ___/  | |    | || |     \___ \ "
sleep 0.1
echo "  / ____ \| |      | |   _| || |____ ____) |"
sleep 0.1
echo " /_/    \_\_|      |_|  |_____\_____|_____/ 2024"
sleep 0.1
echo "ASSESSMENT & PROTECTION TECHNIQUES for INDUSTRIAL CONTROL SYSTEMS"
sleep 0.1
echo "Connect your VM to the HostOnly Network and type ./run.sh to start."

