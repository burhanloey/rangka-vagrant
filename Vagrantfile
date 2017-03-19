# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  config.vm.define "loadbalancer" do |loadbalancer|
    loadbalancer.vm.box = "ubuntu/xenial64"
    loadbalancer.vm.network "private_network", ip: "192.168.33.2"
    loadbalancer.vm.hostname = "learnlisp.today"
    loadbalancer.vm.synced_folder ".", "/vagrant", type: "nfs"
    loadbalancer.vm.provision :shell, path: "conf/nginx/bootstrap.sh"
    loadbalancer.vm.provider "virtualbox" do |vb|
      vb.memory = "512"
    end
  end

  config.vm.define "db" do |db|
    db.vm.box = "ubuntu/xenial64"
    db.vm.network "private_network", ip: "192.168.33.3"
    db.vm.synced_folder ".", "/vagrant", type: "nfs"
    db.vm.provision :shell, path: "conf/postgres/bootstrap.sh"
    db.vm.provider "virtualbox" do |vb|
      vb.memory = "512"
    end
  end

  config.vm.define "appserver1" do |appserver1|
    appserver1.vm.box = "ubuntu/xenial64"
    appserver1.vm.network "private_network", ip: "192.168.33.4"
    appserver1.vm.synced_folder ".", "/vagrant", type: "nfs"
    appserver1.vm.provision :shell, path: "conf/sbcl/bootstrap.sh"
    appserver1.vm.provision :shell, path: "conf/sbcl/install-quicklisp.lisp", privileged: false
    appserver1.vm.provider "virtualbox" do |vb|
      vb.memory = "512"
    end
  end

  # config.vm.define "appserver2" do |appserver2|
  #   appserver2.vm.box = "ubuntu/xenial64"
  #   appserver2.vm.network "private_network", ip: "192.168.33.5"
  #   appserver2.vm.synced_folder ".", "/vagrant", type: "nfs"
  #   appserver2.vm.provision :shell, path: "conf/sbcl/bootstrap.sh"
  #   appserver2.vm.provision :shell, path: "conf/sbcl/install-quicklisp.lisp", privileged: false
  #   appserver2.vm.provider "virtualbox" do |vb|
  #     vb.memory = "512"
  #   end
  # end
end
