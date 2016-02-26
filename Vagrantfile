# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "ubuntu/trusty64"

  # Configure virtual machine specs. Keep it simple, single user.
  config.vm.provider :virtualbox do |p|
    p.customize ["modifyvm", :id, "--memory", 2048]
    p.customize ["modifyvm", :id, "--cpus", 2]
    p.customize ["modifyvm", :id, "--cpuexecutioncap", 50]
  end

  # Configure a synced folder between HOST and GUEST
  config.vm.synced_folder ".", "/vagrant", id: "vagrant-root", :mount_options => ["dmode=777","fmode=777"]

  # Config hostname and IP address so entry can be added to HOSTS file
  config.vm.hostname = "vagrant"
  config.vm.network :private_network, ip: '192.168.99.100'

  # Forward a port from the guest to the host, which allows for outside
  # computers to access the VM, whereas host only networking does not.
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "forwarded_port", guest: 8000, host: 8000

  # kickoff a shell script to install Python essentials
  config.vm.provision :shell, path: "vagrant_bootstrap.sh"
end
