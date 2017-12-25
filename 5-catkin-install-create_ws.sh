sudo apt-get install ros-indigo-catkin


sudo mkdir -p ~/catkin_ws/src
sudo chown -R ubuntu ~/catkin_ws/
cd ~/catkin_ws/
catkin_make
source devel/setup.bash
echo $ROS_PACKAGE_PATH
