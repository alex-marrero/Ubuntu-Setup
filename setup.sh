#!/bin/bash
echo "Updating and Upgrading Linux Packages"
sleep 5
apt-get -y update && 
apt-get -y upgrade &&
apt-get -y install software-properties-common git &&

echo "Adding Ansible Repo and installing Ansible"
sleep 5
apt-add-repository -y ppa:ansible/ansible &&
apt-get -y update &&
apt-get -y install ansible &&

#commenting out to 
    # create User ansible
    # generating ssh key for ansible
    # adding to pivate repo through script and stoing in github/ansible secrets?
echo "Start Ansible-Pull function"
sleep 10
sudo ansible-pull -U --ask-pass https://github.com/alex-marrero/Ubuntu-Setup.git






