# Pick your preferred virtual machine (or you flag --provider=[PROVIDER NAME]
#ENV['VAGRANT_DEFAULT_PROVIDER'] = "virtualbox"
ENV['VAGRANT_DEFAULT_PROVIDER'] = "vmware_desktop"

Vagrant.configure("2") do |config|
  config.ssh.username = "vagrant"
  config.ssh.password = "vagrant"
  config.ssh.keys_only = true
  config.ssh.insert_key = true
  config.vm.boot_timeout = 1800 #Fix timeout failure (timeout seen while using command "vagrant up --debug devkit" flag)
  config.vm.synced_folder "./shared", "/shared", disabled: false

  # Default vm provider is Virtualbox
  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = false
	#vb.customize ["modifyvm", :id, "--cpuexecutioncap", "100"]
	vb.cpus = 2
	# Customize the amount of memory on the VM
	vb.memory = "4096"
  end

  config.vm.provider "vmware_desktop" do |vmware|
  # Display the VMWare GUI when booting the machine
    vmware.gui = false
    vmware.vmx["numvcpus"] = 2
  	# Customize the amount of memory on the VM
  	vmware.vmx["memsize"] = "4096"
  end

  config.vm.define "devkit" do |devkit|
    devkit.vm.provision "shell", path: "devkit.sh"
    devkit.vm.box = "generic/ubuntu2004"
  end

  config.vm.define "devkit_advanced" do |devkit_advanced|
    devkit_advanced.vm.provision "file", source: "connected-files", destination: "$HOME/connected-files"
    devkit_advanced.vm.provision "shell", path: "devkit_advanced.sh"

	# For build new Vagrant box
	devkit_advanced.vm.box = "devkit"

	# For using cloud ready Vagrant box
	#devkit_advanced.vm.box = "erez111/devkit"
    #devkit_advanced.vm.box_version = "0.0.10"
  end
end
