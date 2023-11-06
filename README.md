![tool](https://github.com/Takumi123x/rou/assets/135448368/c6218bd6-f420-4cc9-b5a4-c563c97ee982)

This tool just for edit super. this work both in termux and wsl (desktop)

# Clone this repo
- cd ~
- apt update
- apt upgrade -y
- apt install git -y
- git clone https://github.com/Takumi123x/rou.git

# Run this command
- termux-setup-storage (skip this if wsl)
- chmod +x ~/rou/toolbox.sh
- ln -s ~/rou/toolbox.sh ~/

# If root mode
- tsu
- cd /data/data/com.termux/files/home/
- rm -rf ./.suroot
- ln -s ./ ./.suroot
- termux-setup-storage
- cd ~
- chmod +x ~/rou/toolbox.sh
- ln -s ~/rou/toolbox.sh ~/

# Run this tool
~/toolbox.sh

# If you dont have super.img
- Select Build ROM
- Choose profile
- Open file manager
- Paste vendor and Odm in build-kitchen and if unisoc paste vendor only
- Paste GSI system.img in build-kitchen
- Back to termux and select Build
- Result will super.tar then you can flash it with odin or heimdall
