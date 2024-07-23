# Kali Linux with i3 window manager
## German Keyboard
```
sudo dpkg-reconfigure keyboard-configuration
```
→ 105 Keys <br>
Now reboot

## Setup
First Update and Upgrade Kali Linux:
```
sudo apt update
```
```
sudo apt upgrade -y
```
Set share folder Downloads <br>
Then run the setup script:
```
./setup.sh
```
After the script is done reboot and select i3 (top right corner) on the login screen. Then open a terminal (`ctrl+return`) run `lxappearance` and select ark-dark theme and change the icons to papyrus. <br>
* Check tools folder for tool installs 
* Fix copy in vm problem with `copy_fix`

---
Orginal from: https://github.com/xct/kali-clean
