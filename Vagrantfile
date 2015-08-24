Vagrant.configure(2) do |config|
  config.vm.box = "williamyeh/ubuntu-trusty64-docker"
  config.vm.box_check_update = true
  config.ssh.forward_agent = true
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "forwarded_port", guest: 3000, host: 3000
  config.vm.network "private_network", ip: "100.0.0.201"
  config.vm.synced_folder ".", "/workspace", type: "nfs", nfs_udp: false

  config.vm.provider "virtualbox" do |v|
    v.name = "dev"
    v.memory = 4096
    v.cpus = 2
  end

  config.vm.provision "shell", inline: <<-SHELL
    sudo apt-get update
    sudo apt-get -y install build-essential g++
    sudo apt-get -y install git
    curl -sL https://deb.nodesource.com/setup_0.12 | sudo bash -
    sudo apt-get install -y nodejs
    sudo apt-get -y install npm
    sudo cp /usr/bin/nodejs /usr/bin/node
  SHELL
end
