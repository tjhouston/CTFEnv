#!/bin/sh
# Script to create documentation and workspace for CTF boxes.
# To do: 
# Export env vars to use in MSF and other Tools
# Figure out how to integrate nmap automater 

# Enter RHOST IP Address:

read -p "Enter RHOST IP Address: " RHOST

read -p "Enter LHOST IP Address: " LHOST

read -p "Enter Name of Box / Room: " boxName

mkdir $RHOST

touch $boxName_methodology.md

#Make directory for enumeration
cd $RHOST
mkdir 01_Enumeration
cd 01_Enumeration
mkdir Tools
# https://github.com/21y4d/nmapAutomator
git clone https://github.com/21y4d/nmapAutomator
sudo apt install smtp-user-enum -y
mkdir Results
cd ..
mkdir 02_Exploits

cd ..


echo "*** Workspace Setup for $RHOST - '$boxName' is now complete on $LHOST ***"
