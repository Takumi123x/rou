![tool](https://github.com/Takumi123x/rou/assets/135448368/372e7bcb-705a-4e1b-b503-ca4f75c243f5)
# Clone this repo
- apt update
- apt install git
- git clone https://github.com/Takumi123x/rou.git

# Run this command
- termux-setup-storage
- chmod +x ~/rou/toolbox.sh
- ln -s ~/rou/toolbox.sh ~/
- mkdir ~/storage/shared/build-kitchen

# If root mode
- tsu
- cd /data/data/com.termux/files/home/
- rm -rf ./.suroot
- ln -s ./ ./.suroot
- termux-setup-storage
- cd ~
- chmod +x ~/rou/toolbox.sh
- ln -s ~/rou/toolbox.sh ~/
- mkdir ~/storage/shared/build-kitchen

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
