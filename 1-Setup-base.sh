sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y nano
sudo apt-get install -y git
sudo apt-get install -y nautilus-open-terminal
nautilus -q
nautilus
mkdir ~ubuntu/jetsonHacksStuffs
cd ~ubuntu/jetsonHacksStuffs/
git clone https://github.com/jetsonhacks/postFlash.git
cd postFlash/
./configureSystem.sh
sudo reboot now
