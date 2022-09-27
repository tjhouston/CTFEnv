#! /bin/bash
# Make Directories
mkdir ./enum
mkdir ./exploits
mkdir ./notes
mkdir ./proof

# Download Sec Lists
sudo apt install seclists

# Download GoBuster
sudo apt install gobuster

# Download Enumeration Tools
cd enum
# https://github.com/21y4d/nmapAutomator
git clone https://github.com/21y4d/nmapAutomator
# https://github.com/diego-treitos/linux-smart-enumeration 
git clone https://github.com/diego-treitos/linux-smart-enumeration
# Download Linpeas
curl -L https://github.com/carlospolop/PEASS-ng/releases/latest/download/linpeas.sh
