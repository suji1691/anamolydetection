#!/bin/bash

# clone the repository
git clone https://github.com/pwnieexpress/blue_hydra.git

# change directory
cd blue_hydra

# install dependencies
sudo apt-get install libpcap-dev libglib2.0-dev libssl-dev sqlite3 libsqlite3-dev bluez bluez-test-scripts python-bluez python-dbus libsqlite3-dev ubertooth ruby-dev bundler

bundle install

./bin/blue_hydra

# build the code
#make

# install the service
#sudo make install

# enable the service
sudo systemctl enable blue_hydra.service

# start the service
sudo systemctl start blue_hydra.service
