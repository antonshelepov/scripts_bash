#!/bin/bash

# install python 3.7.9

sudo apt update && sudo apt upgrade
sudo apt-get install wget build-essential checkinstall
sudo apt-get install libreadline-gplv2-dev libncursesw5-dev libssl-dev \
    libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libffi-dev zlib1g-dev

# Step 1 – Download Python 3.7
cd /usr/src
sudo wget https://www.python.org/ftp/python/3.7.9/Python-3.7.9.tgz
sudo tar xzf Python-3.7.9.tgz

# Step 2 – Install Python 3.7
cd Python-3.7.9
sudo ./configure --enable-optimizations
sudo make altinstall

# Step 3 – Check Python Version
python3.7 -V
