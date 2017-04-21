## INSTALL ##

### Requirements ###
- vagrant
- virtualbox

### Run virtual machine with docker on board ###
- Download this repository on to you project directory. Run `vagrant up`.
- Connect to VM via ssh `vagrant ssh`.
- Navigate to project directory `cd /vagrant/project/`.
- Pover on of docker `sudo docker-compose up -d`. (This process need time optimization)
- Now you can run browser and go to `http://localhost:8080` or `http://127.0.0.1:8080`

### Stop VM ###
Logout from VM and type `vagrant suspend`.
