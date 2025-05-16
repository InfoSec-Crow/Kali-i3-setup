#!/bin/bash

sudo apt install bloodhound -y
sudo apt remove bloodhound -y

cd /opt
wget https://github.com/BloodHoundAD/BloodHound/releases/latest/download/BloodHound-linux-x64.zip
unzip BloodHound-linux-x64.zip
rm -f BloodHound-linux-x64.zip

sudo bash -c "cat > /usr/local/bin/bloodhound" <<EOF
#!/bin/bash
/opt/BloodHound-linux-x64/BloodHound --disable-gpu --disable-software-rasterizer --in-process-gpu "\$@"
EOF

sudo chmod +x /usr/local/bin/bloodhound

mkdir -p /home/kali/.config/bloodhound/
cat /home/kali/Documents/Kali-i3-setup/.config/bloodhound/customqueries.json > /home/kali/.config/bloodhound/customqueries.json
