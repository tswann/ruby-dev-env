#!/usr/bin/env bash

#
# tamthethird's Ruby Dev environment bootstrap script for vagrant
# using Ubuntu precise32 standard box 
#

sudo -k
sudo apt-add-repository 'deb http://toolbelt.herokuapp.com/ubuntu ./'
sudo apt-get update
sudo apt-get install -y curl
sudo apt-get install -y libecpg-dev
sudo apt-get install -y postgresql-client
sudo apt-get install -y postgresql postgresql-contrib

# Install RVM and update Ruby version
\curl -L https://get.rvm.io | bash -s stable --ruby --autolibs=enable --auto-dotfiles
rvm install 2.0.0
rvm use 2.0.0 --default

# Install Heroku toolbelt
wget -O- https://toolbelt.heroku.com/apt/release.key | apt-key add -
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

# Install Git and configure
sudo apt-get install -y git
cp /vagrant/gitconfig ~/.gitconfig
