# -*- mode: ruby -*-
# vi: set ft=ruby :

name = "archee"
#hostname = "%s.test.org" % name
hostname = "vbox.archee.org"
ip = "192.168.33.33"

Vagrant.configure(2) do |config|
  config.ssh.insert_key = false
  config.vm.box = "../packer-arch/packer_arch_virtualbox.box"
  #config.vm.box = "tyjak/archlinux"
  config.vm.hostname = hostname
  config.vm.network :private_network, ip: ip
  config.vm.provider "virtualbox" do |v|
	v.name = name
	v.gui = true
  end
  config.vm.provision "shell",
	  inline: "pacman -Q python2 || pacman -Sy --noconfirm python2"
end
