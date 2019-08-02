#! /bin/bash
source /opt/ros/kinetic/setup.bash
source /home/ubuntu/ccms/catkin_ws/devel/setup.bash
roslaunch ccms_pro msg_test.launch
roslaunch ccms_pro can.launch

