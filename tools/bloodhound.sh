#!/bin/bash

cd /opt
wget https://github.com/BloodHoundAD/BloodHound/releases/latest/download/BloodHound-linux-x64.zip
unzip BloodHound-linux-x64.zip
rm -f BloodHound-linux-x64.zip

sudo bash -c "cat > /usr/local/bin/bloodhound" <<EOF
#!/bin/bash
/opt/BloodHound-linux-x64/BloodHound --disable-gpu --disable-software-rasterizer --in-process-gpu "\$@"
EOF

sudo chmod +x /usr/local/bin/bloodhound

mkdir -p /home/kali/Documents/Kali-i3-setup/.config/
cat /home/kali/Documents/Kali-i3-setup/.config/customqueries.json > /home/kali/.config/bloodhound/customqueries.json

sudo neo4j console &

firefox http://localhost:7474
