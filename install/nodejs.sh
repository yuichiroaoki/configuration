#!/bin/bash

# install nodejs
cd ~
curl -sL https://deb.nodesource.com/setup_16.x -o nodesource_setup.sh ;
sudo bash nodesource_setup.sh
sudo apt-get install -y nodejs ;

sudo npm install -g yarn ;

