# -*- mode: ruby -*-
# vi: set ft=ruby :
require "open3"

 
#set internet device name to the world
worldwideinterfaces=%x(ip route get  $(dig +short google.com | tail -1) | grep $(dig +short google.com | tail -1)| awk '{print $5}').chomp

ENV["LC_ALL"] = "en_US.UTF-8"

Vagrant.require_version ">= 1.8"
VAGRANTFILE_API_VERSION = "2"


Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

# network

    # What box should we base this build on?
    config.vm.box = "debian/stretch64"


    # Add 2nd network adapter
    config.vm.network "public_network", type:"dhcp" ,bridge: "#{worldwideinterfaces}"


    config.ssh.insert_key = false
    #######################################################################
    # THIS REQUIRES YOU TO INSTALL A PLUGIN. RUN THE COMMAND BELOW...
    #
    #   $ vagrant plugin install vagrant-disksize
    #
    # Default images are not big enough to build .
    config.disksize.size = "40GB"
  

    # forward terminal type for better compatibility with Dialog - disabled on Ubuntu by default
    config.ssh.forward_env = ["TERM"]

    # default user name is "ubuntu", please do not change it

    # SSH password auth is disabled by default, uncomment to enable and set the password
    #config.ssh.password = "armbian"

    config.vm.provider "virtualbox" do |vb|
        
        #name of VM in virtualbox
        vb.name = "vagrant-debian-stretch64-jenkins"

        # uncomment this to enable the VirtualBox GUI
        #vb.gui = true

        # Tweak these to fit your needs.
        vb.memory = "8192"
        vb.cpus = "4"
    #Add the usb filter for the USB Host Mode for the FEL Mode
    #Caheck inside with lsusb was succesfully if tzhe device is connect AND thr FEL Mode is active
    end


    # Set the name of the VM. See: http://stackoverflow.com/a/17864388/100134
    config.vm.define :jenkins do |jenkins|
    end
  
    # Ansible provisioner.
    config.vm.provision "ansible" do |ansible|
        ansible.playbook = "provisioning/playbook.yml"
        ansible.inventory_path = "provisioning/inventory"
        ansible.sudo = true
    end

end
