Download AD-Tools Script for Linux  . Probably :)

`How to use`

git clone this repo.

chmod +x AD-tools.sh

sudo ./AD-tools.sh


---


The following tools will be installed system-wide when run with root privileges:

## Core Infrastructure
- **Neo4j** - Graph database for BloodHound
- **Hashcat** - Password cracking tool

## Python Tools (Installed Globally)
- **Impacket** - Network protocol toolkit
- **BloodHound.py** - Python BloodHound ingestor
- **Responder** - LLMNR/NBT-NS poisoner
- **enum4linux-ng** - Active Directory enumerator
- **windapsearch** - LDAP enumeration tool
- **smbmap** - SMB share mapper
- **adidnsdump** - AD DNS zone dumper
- **gpp-decrypt** - Decrypts GPP passwords

## Compiled Tools
- **Kerbrute** - Kerberos brute-forcing tool (Go)
- **Snaffler** - Credential hunting tool

## Exploitation Tools
- **evil-winrm** - WinRM exploitation shell (Ruby)
- **noPac** - CVE-2021-42278/42287 exploit
- **PetitPotam** - MS-EFSRPC coercion attack
- **PKINITtools** - Kerberos certificate tools

## BloodHound Suite
- **BloodHound GUI** - Graphical path analysis tool
- **SharpHound Collector** - Windows data collector (Note: Requires Windows for actual use)

## System Packages
- All required dependencies (Python, pip, gem, etc.)
- CrackMapExec (via package manager)
