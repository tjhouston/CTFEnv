#! /bin/bash
# Make Directories
mkdir ./enum
mkdir ./exploits
mkdir ./notes
mkdir ./proof
# Usage loadctf.sh seclists unrock
# Define variables
seclist="$1"
unrock="$2"


# Download Sec Lists
if [ $seclist = "seclists" ]; then  
sudo apt install seclists
echo "seclists installed"
else
echo "seclists not installed"
fi 

if [ $unrock = "unrock" ]; 
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

# Install Autorecon

# Install Autorecon Depends
sudo apt install seclists curl dnsrecon enum4linux feroxbuster gobuster impacket-scripts nbtscan nikto nmap onesixtyone oscanner redis-tools smbclient smbmap snmp sslscan sipvicious tnscmd10g whatweb wkhtmltopdf

# Install Autorecon via pipx
pipx install git+https://github.com/Tib3rius/AutoRecon.git

# Update Path
sudo $(which autorecon) [OPTIONS]

sudo apt install python3-venv
python3 -m pip install --user pipx
python3 -m pipx ensurepath

# Download Linpeas
# git clone https://github.com/carlospolop/PEASS-ng
curl -L https://github.com/carlospolop/PEASS-ng/releases/latest/download/linpeas.sh

