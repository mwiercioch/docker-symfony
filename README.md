#Docker configuration for symfony APP

##Purpose
This repo provides default configuration for symfony application with vagrant support

##How to start (MacOSX)

  1. Clone repository on your local machine
  2. If you need change default app directory into `Vagrantfile` [LINE:8]
  2. Run `vagrant up`
  3. Run `vagrant ssh`
  4. `cd /workspace` on vagrant machine
  5. Run `docker-compose up -d`
  6. check .bash_profile to find out how to log into container or run common commands

##Linux OS
  After cloning repository just leave 2 and 3 points and execute 4
