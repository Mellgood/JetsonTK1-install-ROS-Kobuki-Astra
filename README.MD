# Description
This guide will let you have a full functional ROS install, with full support for Kobuki.
The script is tested on Jetson TK1 with a clean ubuntu 14.04 LTS installation. It should work even in a non-clean environment but it has not been tested (if you do it please give me a feedback).

# Notes
- Nvidia Jetson TK1 is not able to use wifi before you launch 1-Setup-base.sh
- Kobuki will not work without Grinch kernel
- Please do not do any operation during the script execution and save your work before launch it
- Some reboots are planned at the end of some scripts; don't panic and continue to launch other scripts till the last one ;)


# Usage
To use those scripts, just clone and follow the order proposed, running them from the first one to the last one.
```shell
mkdir installROS
cd installROS
git clone https://gitlab.com/Centofanti/JetsonTK1-ROS-Kobuki-install.git
cd JetsonTK1-ROS-Kobuki-install
chown +x *
```
Now you can launch them using sequentially those commands (make sure you are on scripts folder)
```
./1-Setup-base.sh
./2-grinch-kernel.sh
./3-Install-ROS.sh
./4-install-indigo-kobuki.sh
./5-catkin-install-create_ws.sh
```

Maybe, when I will have time, I will release a wrapper script.. But that day is not today, so you have to launch 5 scripts :P