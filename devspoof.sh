#!/bin/bash
# devspoof version 1.0 alpha spoofs device on LAN/WLAN/VLAN with the help of macchanger and ifconfig
ifconfig
echo "choose iface"
read -p "H4CK3R@devspoof~>" iface
clear
echo "---------devspoof--------"
echo "-------------------------"
echo "----1.spoof to random----"
echo "-------------------------"
echo "------2.spoof to IOS-----"
echo "-------------------------"
echo "------3.spoof to OSX-----"
echo "-------------------------"
echo "--4.spoof to MS windows--"
echo "-------------------------"
echo "---5.spoof to android----"
echo "-------------------------"
echo "----6.spoof to custom----"
echo "-------------------------"
read -p "H4CK3R@devspoof~>" ch
if [ "$ch" = "1" ]
then
    sudo ifconfig $iface down
    sudo macchanger -r $iface
    sudo ifconfig $iface up
    exit
fi
if [ "$ch" = "2" ]
then
    sudo ifconfig $iface down
    sudo macchanger -m f4:37:b7:98:33:F5 $iface
    sudo ifconfig $iface up
    exit
fi

if [ "$ch" = "3" ]
then
    sudo ifconfig $iface down
    sudo macchanger -m 28:cf:da:01:ea:05 $iface
    sudo ifconfig $iface up
    exit
fi

if [ "$ch" = "4" ]
then
    sudo ifconfig $iface down
    sudo macchanger -m 00:03:ff:98:bd:25 $iface
    sudo ifconfig $iface up
    exit
fi

if [ "$ch" = "5" ]
then
    sudo ifconfig $iface down
    sudo macchanger -m 00:12:47:09:af:45 $iface
    sudo ifconfig $iface up
    exit
fi


if [ "$ch" = "6" ]
then
    echo "enter mac"
    read -p "H4CK3R@devspoof/MAC~>" mac
    sudo ifconfig $iface down
    sudo macchanger -m $mac $iface
    sudo ifconfig $iface up
    exit
fi