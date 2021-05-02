#!/bin/bash

set -e

echo "Installing Ansible via pip3..."
sudo apt install -y -u curl python3 cowsay
#sudo apt-add-repository ppa:ansible/ansible
sudo apt update -y
sudo apt install -y ansible

export PATH=$PATH:/usr/local/bin:/home/ubuntu/.local/bin
# curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
# python3 get-pip.py --user
# pip3 install --user ansible
# rm ./get-pip.py

echo "Installing requirements..."|cowsay
ansible-galaxy install -r requirements.yml

echo "************************"
echo "*** Playing the book ***"
echo "************************"
echo ""
echo "Insert your admin password to execute sudo commands..."
ansible-playbook main.yml -i inventory -K