#!/usr/bin/env bash

#
# tamthethird's Ruby Dev environment bootstrap script for vagrant
# using Ubuntu precise32 standard box 
#

sudo -k
sudo apt-get update
sudo apt-get install -y curl

# Install RVM and update Ruby version
\curl -L https://get.rvm.io | bash -s stable --ruby --autolibs=enable --auto-dotfiles
rvm install 2.0.0
rvm use 2.0.0 --default

# Install Heroku toolbelt
wget -O- https://toolbelt.heroku.com/apt/release.key | apt-key add -
sudo apt-get install -y heroku-toolbelt

# Install Git and configure
sudo apt-get install -y git
cp /vagrant/gitconfig ~/.gitconfig
