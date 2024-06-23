from ros:noetic

SHELL ["/bin/bash", "-c"]
ENV DEBIAN_FRONTEND noninteractive

run apt update

run sudo apt-get install ros-$ROS_DISTRO-realsense2-camera -y
run sudo apt install python3

run sudo apt update
run sudo apt install python3-pip -y
run sudo apt install python3-catkin-tools -y 
run sudo apt install cmake

run sudo apt install git -y
run apt update


run echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc

run apt-get install -y ros-noetic-catkin  && \
	apt install -y python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential && \
	apt install python3-rosdep && \
	rosdep update


run apt install -y ros-$ROS_DISTRO-rviz

run mkdir catkin_ws && cd catkin_ws && mkdir src && catkin init && cd src
copy  ./ ./catkin_ws/src


run sudo apt install wget
run apt update

run mkdir miniconda3
run wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda3/miniconda.sh 
run bash miniconda3/miniconda.sh -b -u -p ~/miniconda3 
run rm -rf miniconda3/miniconda.sh


#run cd ~/miniconda3/bin/conda && init bash

#run apt update
#run cd catkin_ws/src && conda env create -f environment.yml && echo "source activate #base">> ~/.bashrc && echo "conda activate isdf">> ~/.bashrc

run cd catkin_ws/src && pip install -r requiremens.txt

run sudo apt-get install python3-opencv
run apt update 

run sudo apt-get install libegl1-mesa-dev -y
run apt update

run sudo apt-get install libepoxy-dev
run apt update


run cd catkin_ws/src/Pangolin && mkdir build && cd build && cmake .. && make

run cd catkin_ws/src/ORB_SLAM3_ros/ORB_SLAM3 && chmod +x build.sh && ./build.sh

run apt update
run pip install torch

run apt update
run cd catkin_ws/src/ORB_SLAM3_ros/config && tar -xf ORBvoc.txt.tar.gz
run cd catkin_ws && catkin_make && source devel/setup.bash



