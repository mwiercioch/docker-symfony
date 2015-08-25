Vagrant.configure(2) do |config|
  config.vm.box = "williamyeh/ubuntu-trusty64-docker"
  config.vm.box_check_update = true
  config.ssh.forward_agent = true
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "private_network", ip: "100.0.0.201"
  config.vm.synced_folder ".", "/workspace", type: "nfs", nfs_udp: false
  config.vm.synced_folder "/var/www/symfony-app", "/var/www/api", type: "nfs", nfs_udp: false

  config.vm.provider "virtualbox" do |v|
    v.name = "symfony-app"
    v.memory = 4096
    v.cpus = 2
  end

  config.vm.provision "shell", inline: <<-SHELL
    sudo apt-get update
    source /workspace/.bash_profile
  SHELL
end
