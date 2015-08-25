#Docker configuration for symfony APP

##Purpose
This repo provides default configuration for symfony application with vagrant support

##How to start (MacOSX)

  1. Clone repository on your local machine
  2. Run `vagrant up`
  3. Run `vagrant ssh`
  4. `cd /workspace` on vagrant machine
  5. Run `docker-compose up -d`
  6. Run `source .bash_profile`
  7. `cd /var/www/symfony-app` and start developing

##Change local project directory

  If you need to change default directory (/var/www/symfony) to other directory, please change `Vagrantfile` sync directory
