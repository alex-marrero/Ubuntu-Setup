#!/bin/bash
echo "Updating and Upgrading Linux Packages"
sleep 5
apt-get -y update && 
apt-get -y upgrade &&
apt-get -y install software-properties-common &&

echo "Adding Ansible Repo and installing Ansible"
sleep 5
apt-add-repository -y ppa:ansible/ansible &&
apt-get -y update &&
apt-get -y install ansible &&

echo "Install Git"
sleep 5
apt-get -y install git

echo "Starting Ansible-Pull function"
sleep 10

echo Done




