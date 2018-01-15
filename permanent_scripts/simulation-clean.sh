sed -i '/ROS_MASTER_URI/d' ~/.bashrc
sed -i '/ROS_HOSTNAME/d' ~/.bashrc
sed -i '/Ros network config/d' ~/.bashrc

sed -i '/ROS_MASTER_URI/d' ~/catkin_ws/devel/setup.sh
sed -i '/ROS_HOSTNAME/d' ~/catkin_ws/devel/setup.sh
sed -i '/simulation-start.sh/d' ~/catkin_ws/devel/setup.sh
