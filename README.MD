# Description
This guide will let you have a full functional ROS install, with full support for Kobuki and Astra deep camera.
The script is tested on Jetson TK1 with a clean ubuntu 14.04 LTS installation. It should work even in a non-clean environment but it has not been tested (if you do it please give me a feedback).

# Notes
- Nvidia Jetson TK1 is not able to use wifi before you launch 1-Setup-base.sh
- Kobuki will not work without Grinch kernel
- Please do not do any operation during the script execution and save your work before launch it
- Some reboots are planned at the end of some scripts; don't panic and continue to launch other scripts till the last one ;)

# What will you get?
- USB3 enabled (disabled by default)
- Energy-saving policy configured in a better way to support a board that should run upon a robot :P
- Chromium installed. Firefox has a lot of bugs on Jetson :( I recommend to use Chromium but, if you prefere, you can pick another one
- Nano installed
- Right click - open shell enabled
- Wifi enabled
- Full ros-indigo-desktop installed
- ros-indigo-kobuki and ros-indigo-kobuki-core installed
- udev rule for kobuki created (kobuki should appear on /dev/kobuki after you replug it)
- astra camera
- udev rule for astra created (astra should appear on /dev/astra after you replug it)


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
```shell
./1-Setup-base.sh
./2-grinch-kernel.sh
./3-Install-ROS.sh
./4-install-indigo-kobuki.sh
```
Have a look to the last few lines. If you see an error, reboot and launch ./4-install-indigo-kobuki.sh again.
If all went right, go on!
```shell
./5-catkin-install-create_ws.sh
./6-install-astra-camera
./7-remove-downloads.sh
```

Maybe, when I will have time, I will release a full automated wrapper script.. But that day is not today, so you have to launch scripts manually :P

#Test
Let's check if evrything works fine!
Now you have to connect kobuki to Jetson board over USB, then turn on kobuki and wait for the green status led.
You should be able to use it now so we will try to run a funny default app.

Open 2 terminal shells and issue:
```shell
# First shell
roslaunch kobuki_node minimal.launch --screen
# Second shell
roslaunch kobuki_keyop safe_keyop.launch --screen
```
With the second shell focussed, you should be able to move kobuki, using arrow keys. Pay attention to movement because, for some reasons I can not understand, the command are holding previous state and are cumulative so if u push 5x up arrow, kobuki will go forward 5x speed untill you press down arrow 5x times...

Now it's time to test astra cam so you can keep opened the previous shells while opening 2 more ones:
```shell
# Third shell
roslaunch astra_launch astra.launch
# Fourth shell
rqt_image_view
```
On the rqt_image_view screen, select the source video topic you want to observe and enjoy

Now you have all the hardware you need to develop your amazing bots intelligence