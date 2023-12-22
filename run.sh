#!/bin/bash

ip=$(ip -4 addr show enp0s3 | grep -oP '(?<=inet\s)\d+(\.\d+){3}')

clear
echo ""
echo "           _____ _______ _____ _____  _____ "
echo "     /\   |  __ \__   __|_   _/ ____|/ ____|"
echo "    /  \  | |__) | | |    | || |    | (___  "
echo "   / /\ \ |  ___/  | |    | || |     \___ \ "
echo "  / ____ \| |      | |   _| || |____ ____) |"
echo " /_/    \_\_|      |_|  |_____\_____|_____/ "
echo "ASSESSMENT & PROTECTION TACTICS for INDUSTRIAL CONTROL SYSTEMS"


#keep emulation awake
xset -dpms
xset s off
sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target
gsettings set org.gnome.desktop.screensaver lock-enabled false
sleep 0.25
echo ""
echo "Available emulations on: "$ip
sleep 0.25
echo ""
echo "[1] S7-300"
sleep 0.1
echo "[2] OT Network"
sleep 0.1
echo "[3] S7-1500"
sleep 0.1
echo "[4] TP1200 Comfort"
sleep 0.1
echo "[5] Bonus: S7-1200"
sleep 0.1

s7300() {
  echo "[!] Reboot your VM when you're done with this emulation"
  sleep 1
  echo "[*] Applying S7-300 Profile"
  sudo cp ~/aptics/snap7/build/bin/x86_64-linux/libsnap7.so-300 /usr/lib/libsnap7.so
  sleep 1
  echo "[+] Emulating S7-300 PLC on "$ip
  echo ""
  cd ~
  cd aptics/s7300/
  sudo nohup python -m SimpleHTTPServer 80 > /dev/null 2>&1 &
  cd ~
  sudo ./aptics/snap7/examples/cpp/x86_64-linux/server $ip 
}

s71200() {
  echo "[!] Exit this emulation with CTRL+C"
  echo "[*] Applying S7-1200 Profile"
  sleep 1
  sudo cp ~/aptics/snap7/build/bin/x86_64-linux/libsnap7.so-1200 /usr/lib/libsnap7.so
  sleep 1
  echo "[+] Starting S7-1200 PLC on "$ip
  echo ""
  sudo ./aptics/snap7/examples/cpp/x86_64-linux/server $ip 
}

s71500() {  echo "[!] Reboot your VM when you're done with this emulation"
  sleep 1
  echo "[*] Applying S7-1500 Profile"
  sudo cp ~/aptics/snap7/build/bin/x86_64-linux/libsnap7.so-1500 /usr/lib/libsnap7.so
  sleep 1
  echo "[+] Emulating S7-1500 PLC on "$ip
  echo ""
  cd ~
  cd aptics/s71500/
  #nohup sudo python3 -m http.server 80 > /dev/null 2>&1 &
  sudo nohup python -m SimpleHTTPServer 80 > /dev/null 2>&1 &
  cd ~
  sudo ./aptics/snap7/examples/cpp/x86_64-linux/server $ip
}

otnet() {
  echo "[!]Reboot your VM when you're done with this emulation"
  sleep 1
  sudo pkill farpd
  sudo pkill honeyd
  echo "[*] Creating hosts and spawning OT network"
  echo ""
  sudo honeyd -f ot.conf 10.2.0.50-10.2.0.71
  #sudo nohup honeyd -f ot.conf 10.2.0.50-10.2.0.71 > /dev/null 2>&1 &
  sleep 5
  echo ""
  echo "[*] Starting Forwarding and Routing Protocol Daemon for OT network"
  echo ""
  sudo farpd 10.2.0.50-10.2.0.71
  #sudo nohup farpd 10.2.0.50-10.2.0.71 > /dev/null 2>&1 &
  sleep 2
  echo ""
  echo "[+] OT network emulation ready"
  echo -n "[!] Press Enter to end this emulation and reboot the VM."
  read key
  case $key in
    *) reboot ;;
  esac
}

reboot() {
  echo "[*] Rebooting the VM..."
  sudo pkill farpd
  sudo pkill honeyd
  sleep 1
  sudo reboot
}

wincc() {  
  echo "[!] Reboot your VM when you're done with this emulation"
  sleep 1
  echo "[+] Emulating TP1200 Comfort HMI on "$ip
  echo ""
  cd ~
  cd aptics/wincc/
  sudo python -m SimpleHTTPServer 8080
  cd ~
}
echo -n "[i] Choose a system to emulate: "
read option
case $option in
  1) s7300 ;;
  2) otnet ;;
  3) s71500 ;;
  4) wincc ;;
  5) s71200 ;;
  *) echo "[!] Invalid option. Quitting..." ;;
esac
