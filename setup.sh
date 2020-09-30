#!/bin/bash
echo "Updating and Upgrading Linux Packages"
sleep 5
sudo apt-get -y update && 
sudo apt-get -y upgrade &&
sudo apt-get -y install software-properties-common git &&

echo "Upgrading PIP and installing Ansible"
sleep 5
pip3 install --upgrade pip &&
pip3 install ansible

echo "Start Ansible-Pull function"
sleep 10
sudo ansible-pull -U https://github.com/alex-marrero/Ubuntu-Setup.git






