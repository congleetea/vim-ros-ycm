#!/bin/bash
set -e
dir=$(cd $(dirname "${BASH_SOURCE[0]:-$0}") && pwd)
ros_workspace=$(echo $ROS_WORKSPACE)
cd $ros_workspace && catkin config $@ --cmake-args "-DCMAKE_EXPORT_COMPILE_COMMANDS=ON"
cp -f "${dir}/.ycm_extra_conf.py" "${ros_workspace}/.ycm_extra_conf.py"
