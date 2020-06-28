#!/bin/bash

echo "Inatlling virtualbox and vagrant" 
sudo apt install virtualbox vagrant
if [ $? != 0 ]; then
  echo "Installation failed"
  exit -1;
fi 

echo "Deploying vagrant in ubuntu"

sudo mkdir ~/vagrant-ubuntu
cd ~/vagrant-ubuntu

sudo vagrant init ubuntu/trusty64
if [ $? != 0 ]; then
  echo "vagrant init failed"
  exit -1;
fi 
sudo vagrant up
sudo vagrant ssh