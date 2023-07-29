# Clone this repo
- apt install git -y
- git clone https://github.com/Takumi123x/rou.git

# Run this command
- termux-setup-storage
- chmod +x ~/rou/toolbox.sh
- ln -s ~/rou/toolbox.sh ~/
- mkdir ~/storage/shared/build-kitchen

# If ROOT mode
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
