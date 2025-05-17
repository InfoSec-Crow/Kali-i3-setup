# Setup automatically
## Update + Upgrade
```
sudo apt update
```
```
sudo apt upgrade -y
```
## German Keyboard
```
sudo dpkg-reconfigure keyboard-configuration
```
→ 105 Keys <br>
Now reboot

## i3 window manager setup
Install i3 from [kali-clean](https://github.com/xct/kali-clean).
```
sh i3_setup.sh
```
After the script is done reboot and select i3 (top right corner) on the login screen. <br>
Open a terminal (`ctrl+return`) run `lxappearance` to change theme and change the icons (papyrus).
* Fix copy in vm problem with `copy_fix`

## Personal setup
Add some programs, plugins etc. 
```
sh my_setup.sh
```

## Install tools
```
python3 install_all_tools.py
```
Install all tools in `tools` folder. <br>
Logs progress in `install.log` and errors in `errors.log`.

# Setup yourself
* Burp Suite (firefox FoxyProxy)
* BloodHound (neo4j creds)
* Share folder

