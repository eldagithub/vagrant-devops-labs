#!/bin/bash
sudo apt update
sudo apt install openjdk-8-jdk -y

sudo addgroup jenkins
sudo useradd -g jenkins jenkins
sudo usermod -aG sudo jenkins

sudo mkdir -p /home/jenkins/.ssh
sudo touch /home/jenkins/.ssh/authorized_keys 
sudo chmod 700 /home/jenkins/.ssh
sudo chmod 600 /home/jenkins/.ssh/authorized_keys
sudo chown -R jenkins:jenkins /home/jenkins

sudo cat /home/vagrant/.ssh/authorized_keys >> /home/jenkins/.ssh/authorized_keys
sudo cat /mnt/host_machine/ssh-keys/id_rsa.pub >> /home/jenkins/.ssh/authorized_keys


#cp -p /mnt/host_machine/ssh-keys/* /home/vagrant/.ssh/
#cat /home/vagrant/.ssh/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys
###
