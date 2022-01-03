#!/bin/bash
sudo apt update
sudo apt install openjdk-8-jdk -y
sudo apt install ca-certificates -y
sudo apt install maven git wget unzip -y
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install jenkins -y

cp -p /mnt/host_machine/ssh-keys/* /home/vagrant/.ssh/
#cat /home/vagrant/.ssh/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys
###
