FROM osrf/ros:noetic-desktop-full

ARG USER=user
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update --allow-insecure-repositories \
 && apt-get upgrade -y \
 && apt-get install -y \
    python3-pip \
    ros-noetic-actionlib-tools \
    ros-noetic-gazebo-ros-control \
    ros-noetic-moveit \
    ros-noetic-roboticsgroup-upatras-gazebo-plugins \
    ros-noetic-ros-controllers \
    ros-noetic-rosserial \
    ros-noetic-rosserial-arduino \
    terminator \
 && apt-get clean

WORKDIR /workspace
