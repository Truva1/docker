#! /bin/bash
echo "DOCKER"
sudo apt update
sudo apt update
sudo apt install docker.io -y
echo "CLI AWS"
sudo apt update
sudo apt update
sudo python3 -m pip install awscli==1.18.105
echo "BOTOCORE"
sudo apt update
sudo apt update
sudo python3 -m pip install botocore==1.17.28
echo "TERRAFORM"
sudo wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform
