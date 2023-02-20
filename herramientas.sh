#! /bin/bash
echo "JAVA"
sudo apt update
sudo apt update
sudo apt install default-jre -y
echo "JENKINS"
sudo apt update
sudo apt update
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt update
sudo apt install jenkins -y
sudo systemctl start jenkins
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
echo "CHECKOV"
sudo apt update
sudo apt install software-properties-common -y
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt install python3 -y
sudo apt install python3-pip -y
sudo pip install junit2html
sudo python3.8 -m pip install -U checkov #to install or upgrade checkov)
echo "LIBUTILS"
sudo apt update
sudo apt update
sudo apt install libxml2-utils
echo "CLI AWS"
sudo apt update
sudo apt update
sudo python3 -m pip install awscli==1.18.105
echo "BOTOCORE"
sudo apt update
sudo apt update
sudo python3 -m pip install botocore==1.17.28
echo "ANSIBLE"
sudo apt-get update
sudo apt-get update
sudo apt install ansible -y
echo "TERRAFORM"
sudo wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform
echo "CLONAR REPO"
sudo -u ubuntu sh -c "cd /home/ubuntu; git clone https://github.com/DemosPeriferiaDevOps/ConfigJenkins.git; cd ConfigJenkins; ansible-playbook jenkins.yaml"
