# Ready Vagrant of virtual machine for Development including all necessary development kits and tools

Virtual machine, which was made for development environment. Includes all necessary development kits and tools along with LATEST package versions in one virtual machine: Newest Ubuntu machine (latest Ubuntu 20), NodeJS, OpenJDK default (latest OpenJDK LTS), Maven, k3s (for Kubernetes), Python 3 with Anaconda installed and python3 virtual environment, docker engine, docker-compose, Git, more development tools (nano, curl, etc.)

In this repository you will find:
1. Ready Vagrant files for building new virtual machine
2. Example of existing vagrant file after build and ready to download (https://app.vagrantup.com/erez111/boxes/devkit)

##Goal
Generation of virtual environment with all necessary features for NodeJs, Java, Python developers. 

##Why did I made it for?
In order to work in virtual machine easy in Ubuntu especially over ssh, there is need to create a VirtualBox, configure it and rapidly update packages.
Using a basic vagrant file (erez111/devkit), you can have latest versions of necessary packages and easily upgrade base Virtualbox.

## How to use it (also for Vagrant beginners)
In order start using virtual environment with VirtualBox,
You should:
1. Install VirtualBox (https://www.virtualbox.org/wiki/Downloads)
2. Install Vagrant (https://www.vagrantup.com/downloads)
3. Download current repository
4. Optionally, modify devkit_advanced.sh file with your own custom commands
5. Optionally, you can share file between host to virtual machine under "shared" folder and under "connected-files" folder. 
6. Execute "vagrant up devkit_advanced"

Wait a while, since it may take some time (meanwhile, you can read vagrant docs)... 
When it will be finished, wow! You have your own devkit_advanced virtual machine, which is based on erez111/devkit virtual machine.   

- For more info about Vagrant, please read Vagrant docs:
https://www.vagrantup.com/docs 
- Vagrant box is READY for download at:
   https://app.vagrantup.com/erez111/boxes/devkit

## How to use it (also for Vagrant "advanced")


### Tip
It is a good practice to work with virtual machine hierarchy of with Vagrant.
erez111/devkit can be a base machine for our use case
