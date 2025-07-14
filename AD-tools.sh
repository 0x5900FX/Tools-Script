#!/bin/bash

# Active Directory Security Tools Installer for Linux (Linux-compatible tools only)
# Run as root or with sudo

# Update system first
echo "[*] Updating system packages..."
apt-get update && apt-get upgrade -y

# Install dependencies
echo "[*] Installing dependencies..."
apt-get install -y git python3 python3-pip python3-venv golang ldap-utils smbclient libsasl2-dev libldap2-dev libssl-dev gem

# Install Impacket
echo "[*] Installing Impacket..."
git clone https://github.com/SecureAuthCorp/impacket.git /opt/impacket
pip3 install -r /opt/impacket/requirements.txt
cd /opt/impacket && python3 setup.py install
cd -

# Install BloodHound Python ingestor
echo "[*] Installing BloodHound.py..."
pip3 install bloodhound

# Install Kerbrute
echo "[*] Installing Kerbrute..."
wget https://github.com/ropnop/kerbrute/releases/latest/download/kerbrute_linux_amd64 -O /usr/local/bin/kerbrute
chmod +x /usr/local/bin/kerbrute

# Install Responder
echo "[*] Installing Responder..."
git clone https://github.com/lgandx/Responder /opt/Responder
pip3 install -r /opt/Responder/requirements.txt

# Install CrackMapExec
echo "[*] Installing CrackMapExec..."
apt-get install -y crackmapexec

# Install enum4linux-ng
echo "[*] Installing enum4linux-ng..."
git clone https://github.com/cddmp/enum4linux-ng /opt/enum4linux-ng
pip3 install -r /opt/enum4linux-ng/requirements.txt
ln -s /opt/enum4linux-ng/enum4linux-ng.py /usr/local/bin/enum4linux-ng

# Install windapsearch
echo "[*] Installing windapsearch..."
git clone https://github.com/ropnop/windapsearch /opt/windapsearch
pip3 install -r /opt/windapsearch/requirements.txt
ln -s /opt/windapsearch/windapsearch.py /usr/local/bin/windapsearch

# Install smbmap
echo "[*] Installing smbmap..."
git clone https://github.com/ShawnDEvans/smbmap /opt/smbmap
pip3 install -r /opt/smbmap/requirements.txt
ln -s /opt/smbmap/smbmap.py /usr/local/bin/smbmap

# Install adidnsdump
echo "[*] Installing adidnsdump..."
pip3 install adidnsdump

# Install Snaffler
echo "[*] Installing Snaffler..."
wget https://github.com/SnaffCon/Snaffler/releases/latest/download/Snaffler.Linux -O /usr/local/bin/snaffler
chmod +x /usr/local/bin/snaffler

# Install evil-winrm
echo "[*] Installing evil-winrm..."
gem install evil-winrm

# Install Hashcat
echo "[*] Installing Hashcat..."
apt-get install -y hashcat

# Install noPac exploit
echo "[*] Installing noPac..."
git clone https://github.com/Ridter/noPac /opt/noPac

# Install PetitPotam
echo "[*] Installing PetitPotam..."
git clone https://github.com/topotam/PetitPotam /opt/PetitPotam

# Install PKINITtools
echo "[*] Installing PKINITtools..."
git clone https://github.com/dirkjanm/PKINITtools /opt/PKINITtools

# Install gpp-decrypt
echo "[*] Installing gpp-decrypt..."
pip3 install pycrypto

# Install BloodHound (Electron app)
echo "[*] Installing BloodHound GUI..."
wget https://github.com/BloodHoundAD/BloodHound/releases/latest/download/BloodHound-linux-x64.zip -O /tmp/bloodhound.zip
unzip /tmp/bloodhound.zip -d /opt/BloodHound
ln -s /opt/BloodHound/BloodHound /usr/local/bin/bloodhound
rm /tmp/bloodhound.zip

# Install Neo4j for BloodHound
echo "[*] Installing Neo4j..."
wget -O - https://debian.neo4j.com/neotechnology.gpg.key | apt-key add -
echo 'deb https://debian.neo4j.com stable latest' > /etc/apt/sources.list.d/neo4j.list
apt-get update
apt-get install -y neo4j

echo "[+] Installation complete!"
echo "[*] All installed tools are Linux-native versions"
