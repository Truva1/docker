#! /bin/bash
echo "DOCKER"
sudo apt update
sudo apt update
sudo apt install docker.io
echo "PIP"
apt install python3 -y
sudo apt install python3-pip -y
echo "CLI AWS"
sudo apt update
sudo apt update
sudo python3 -m pip install awscli==1.18.105
echo "BOTOCORE"
sudo apt update
sudo apt update
sudo python3 -m pip install botocore==1.17.28
