#!/bin/bash

# clone the repository
git clone https://github.com/pwnieexpress/blue_hydra.git

# change directory
cd blue_hydra

# install dependencies
sudo apt-get install libpcap-dev libglib2.0-dev libssl-dev

# build the code
make

# install the service
sudo make install

# enable the service
sudo systemctl enable blue_hydra.service

# start the service
sudo systemctl start blue_hydra.service
