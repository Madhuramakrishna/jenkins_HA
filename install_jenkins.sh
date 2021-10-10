#!/bin/bash

#set -x

sudo amazon-linux-extras install epel -y;
sudo yum update -y;
sudo yum install java -y;
sudo cp jenkins.repo /etc/yum.repos.d/;
sleep 5;
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key;
sudo yum install jenkins -y;
sudo systemctl start jenkins;
sudo systemctl status jenkins;
#sudo cat /var/lib/jenkins/secrets/initialAdminPassword
