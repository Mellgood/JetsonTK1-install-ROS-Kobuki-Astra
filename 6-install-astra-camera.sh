RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color
sudo apt-get install -y ros-indigo-astra-camera
sudo apt-get install -y ros-indigo-astra-launch
sudo apt-get install -y python-catkin-tools

sudo apt-get install libusb-1.0-0-dev
sudo apt-get install libudev-dev

mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/
catkin init
catkin init --workspace .
catkin config --init
catkin build
cd /src
git clone https://github.com/orbbec/ros_astra_launch.git
git clone https://github.com/orbbec/ros_astra_camera.git
cd ~/catkin_ws/
catkin build
source ~/catkin_ws/devel/setup.bash
roscd astra_camera && ./scripts/create_udev_rules
echo -e "${RED}UNPLUG AND CONNECT ASTRA AGAIN, PLEASE${NC}"
echo -e "then run: ${GREEN}ls /dev/ | grep astra${NC}"
echo -e "if you see the word ${RED}astra${NC}, all went fine"
