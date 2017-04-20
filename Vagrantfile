# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
	config.vm.box = "ubuntu/xenial64"
	config.vm.synced_folder ".", "/vagrant/project"
	config.vm.provision :shell, path: "vagrant/bootstrap.sh"
	config.vm.network :forwarded_port, guest: 8080, host_ip: "127.0.0.1",  host: 8080
end
