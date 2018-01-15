echo '# Configurazione ip effettuata da simulation-start.sh' >> ~/catkin_ws/dev$
echo export ROS_MASTER_URI=http://$1:11311 >> ~/catkin_ws/devel/setup.sh
echo export ROS_HOSTNAME=$1 >> ~/catkin_ws/devel/setup.sh

echo '# Configurazione ip effettuata da simulation-start.sh' >> ~/.bashrc
echo export ROS_MASTER_URI=http://$1:11311 >> ~/.bashrc
echo export ROS_HOSTNAME=$1 >> ~/.bashrc
