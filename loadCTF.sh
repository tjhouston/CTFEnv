#! /bin/bash
# Make Directories
mkdir ./enum
mkdir ./exploits
mkdir ./notes
mkdir ./proof





seclist="$1"
unrock="$2"


# Download Sec Lists
if [ $seclist = "true" ]; then  
sudo apt install seclists
echo "seclists installed"
else
echo "seclists not installed"
fi 

if [ $unrock = "true" ]; 
then 
gunzip /usr/share/wordlists/rockyou.txt.gz
echo "rock you unzipped"
else
echo "rockyou not unzipped"
fi


# Download GoBuster
sudo apt install gobuster

# Install FeroxBuster
sudo apt install feroxbuster
sudo apt upgrade

# Download Enumeration Tools
cd enum
# https://github.com/21y4d/nmapAutomator
git clone https://github.com/21y4d/nmapAutomator
# https://github.com/diego-treitos/linux-smart-enumeration 
git clone https://github.com/diego-treitos/linux-smart-enumeration
# Download Linpeas
# git clone https://github.com/carlospolop/PEASS-ng
curl -L https://github.com/carlospolop/PEASS-ng/releases/latest/download/linpeas.sh
