# c41n
**c41n** is an automated Rogue Access Point setup tool.

**c41n** provides automated setup of several types of Rogue Access Points, and Evil Twin attacks. **c41n** sets up an access point with user defined characteristics (interface, name and channel for the access point), sets up DHCP server for the access point, and provides user with abilities of HTTP traffic sniffing, or Captive Portal setup with credential sniffing. 

# Installation:
Installation consists of cloning the repo, running a script that will install dependencies, or install them manually, and making **c41n** executable. Installation script works with apt and pacman package managers (Debian and Arch only). 
```
# git clone https://github.com/MS-WEB-BN/c41n/
# cd c41n
# sudo bash install.sh
# sudo chmod +x c41n
```
Dependencies can also be installed manually (without the script) with apt-get package manager (Debian and Debian based distributions):
```
# sudo apt-get install net-tools hostapd dnsmasq tcpflow
```
and pacman (Arch and Arch based distributions):
```
# sudo pacman -Sy net-tools hostapd dnsmasq tcpflow
```

# Usage:
**c41n** can be run in interactive, and quick mode.

To run **c41n** in ***interactive mode***:
```
# ./c41n
```

***Quick mode***:


*Start Rogue AP*:
```
# ./c41n <AP interface> <internet connection interface> <AP name> <AP channel>
```

*Start Rogue AP + sniffing HTTP traffic*:
```
# ./c41n sniff <AP interface> <internet connection interface> <AP name> <AP channel>
```

*Start Rogue AP + captive portal*:
```
# ./c41n captive <ap interface> <internet connection interface> <AP name> <AP channel> <redirection parameter>
```

Redirection parameter can have the following values: 
```
0: Redirects only predefined domains.
1: Redirects all traffic.
domains_file: Redirects predefined domains + domains from specified file (separated by new line).
```

***Examples***:

[**1**] Start Rogue AP on wlan0 interface, route traffic from eth0 interface, AP name: 'AP', AP channel: '1'
```
# ./c41n wlan0 eth0 AP 1
```

[**2**] Start Rogue AP and sniff HTTP traffic on wlan0 interface, route traffic from wlan1 interface, AP name: 'Access_Point', AP channel: '6'
```
# ./c41n sniff wlan0 wlan1 Access_Point 6
```

[**3**] Start Rogue AP with captive portal on wlp6s0 interface, redirect default domains and domains from custom file (/home/name/Documents/domains.txt), route traffic from eth1 interface, AP name: 'router', AP channel: '9'
```
# ./c41n captive wlp6s0 eth1 router 9 /home/name/Documents/domains.txt
```

# Screenshots:

![1](https://i.ibb.co/w7bTzpJ/c41n-arch.png)
![2](https://i.ibb.co/rH8hykc/screenshot.png)

# License:

The software is free to use, modify and distribute, as long as the credit is given to the creator (***n1x_ [MS-WEB]***).

# Disclaimer:

Any actions and/or activities done by using **h4rpy** are solely your responsibility. The misuse of **h4rpy** can result in criminal charges brought against the persons in question. The author will not be held responsible in the event any criminal charges be brought against any individuals misusing **h4rpy** to break the law.

# Contribution note:

Each of the scripts/tools/programs hosted here are made as a part of MS-WEBs cyber security courses, aimed toward beginners, therefore are purely educational and/or demonstrational, and are meant to stay that way, even if wider audience and real world usage are reached. All pauses present in code are there so that the user can read the output, so the action that is running is understood.

All pull requests removing such pauses, or parts of output are against the educational purpose, and will not be accepted.

*To remove sleeps from **c41n** use:*
```
sed -i '/sleep/d' ./c41n
```
