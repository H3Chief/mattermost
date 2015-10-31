# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  config.vm.box = "ubuntu/trusty64"

  config.vm.network "forwarded_port", guest: 80, host: 9071

  config.vm.synced_folder ".", "/home/vagrant/mattermost"

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  config.vm.network "private_network", ip: "192.168.33.41"

  config.vm.hostname = "mattermostdev"

  config.vm.provider "virtualbox" do |vb|
    # allocates 2 cpu's
	vb.cpus = 2
  
    # Customize the amount of memory on the VM:
    vb.memory = "2048"
    
	#assigns a name to the vm
	vb.name = "mattermost"
  end


  config.vm.provision "puppet" do |puppet|
	puppet.manifests_path = "provision/manifests"
	puppet.manifest_file = "init.pp"
    puppet.modules_path = "provision/modules"
  end
  
end
