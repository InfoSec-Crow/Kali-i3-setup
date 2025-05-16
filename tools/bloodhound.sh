#!/bin/bash

sudo apt install openjdk-17-jre -y
wget -O - https://debian.neo4j.com/neotechnology.gpg.key | sudo gpg --dearmor -o /usr/share/keyrings/neo4j-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/neo4j-archive-keyring.gpg] https://debian.neo4j.com stable 5" | sudo tee /etc/apt/sources.list.d/neo4j.list
sudo apt install neo4j -y

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
