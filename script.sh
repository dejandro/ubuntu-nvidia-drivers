#!/bin/bash

### If you have a previous installation remove it first

sudo apt-get purge nvidia*
sudo apt remove nvidia-*
sudo rm /etc/apt/sources.list.d/cuda*
sudo apt-get autoremove && sudo apt-get autoclean -y
sudo rm -rf /usr/local/cuda*

sudo apt-get update -y

### install other import packages
sudo apt-get install g++ freeglut3-dev build-essential libx11-dev libxmu-dev libxi-dev libglu1-mesa libglu1-mesa-dev -y

### Security Update
sudo apt-get -s dist-upgrade | grep "^Inst" | grep -i securi | awk -F " " {'print $2'} | xargs sudo apt-get install -y

### install Nvidia Driver
sudo apt install nvidia-driver-525 -y

### list all GPUs
nvidia-smi -L
