# For silient mode (avoiding interactive shell) for "grub-pc" package
echo "set grub-pc/install_devices /dev/sda" | debconf-communicate

apt-get -y update && apt-get -y upgrade
sudo apt-get -y remove docker docker-engine docker.io containerd runc
apt-get -y install nano curl gedit net-tools

# Before installing the guest additions, you will need the linux kernel headers and the basic developer tools
#sudo apt-get install linux-headers-$(uname -r) build-essential dkms



#apt-get -y install openssh-server # Irrelevant for Vagrant
#ufw disable # Irrelevant for Vagrant

# Install docker-ce
sudo apt-get -y remove docker docker-engine docker.io containerd runc
sudo apt-get -y install apt-transport-https ca-certificates curl gnupg-agent software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get -y update
sudo apt-get -y install docker-ce docker-ce-cli
sudo usermod -aG docker devkit


# Install docker-compose
sudo curl -L https://github.com/docker/compose/releases/download/1.26.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version

# Minikube installation
sudo apt-get update && sudo apt-get -y install apt-transport-https
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
sudo apt-get -y update
sudo apt-get -y install kubectl
# /Minikube installation

# K3s Installation
curl -sfL https://get.k3s.io | sh -
# /K3s Installation

# Install notepad++
sudo apt-get -y install snapd snapd-xdg-open

#Install NodeJS
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get -y install nodejs
apt-get -y install build-essential

# Install git
# Just to verify- Git should have been already installed
apt-get -y install git

# Install java and enter it to $JAVA_HOME
sudo apt -y update
sudo apt -y install default-jdk
java --version #version openjdk default is install = openjdk11 lts

#sudo update-alternatives --config java (get java installation path like: /usr/lib/jvm/java-11-openjdk-amd64/bin/java)
#sudo nano /etc/environment  (+ add there something like: JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64")
#source /etc/environment
#echo $JAVA_HOME #verify output is: /usr/lib/jvm/java-11-openjdk-amd64
#java --version #verify it works

# Install maven
apt -y install maven
mvn -version
# /Install maven

# Install Anaconda for Python 3 (in Slient mode)
wget https://repo.anaconda.com/archive/Anaconda3-2020.07-Linux-x86_64.sh -O ~/anaconda.sh
bash ~/anaconda.sh -b -p /home/vagrant/anaconda
echo "export PATH=/home/vagrant/anaconda/bin:$PATH" >> /home/vagrant/.bashrc
source ~/.bashrc
conda config --set auto_activate_base false
# /Install Anaconda for Python 3 (in Slient mode)

# Install python 3.8 ^
python --version #it should show python 3.7.4 or above
apt -y install zlib1g-dev libffi-dev # solves some potential errors)
apt -y install python3-venv #Create a virtual environment through Python3-venv
apt-get -y install build-essential libssl-dev libffi-dev python-dev
apt -y autoremove
# /Install python 3.8 ^