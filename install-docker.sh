sudo apt-get purge lxc-docker*
sudo apt-get purge docker.io*

sudo apt-get update

sudo apt-get install apt-transport-https ca-certificates software-properties-common curl
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88

# For Ubuntu 16.x and 17.x
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# for ubuntu 18.04 LTS uncomment below and execute
#sudo add-apt-repository \
#  "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
#  $(lsb_release -cs) \
#  test"

sudo apt-get update

sudo apt-get install docker-ce

sudo docker run hello-world

sudo service docker start
sudo groupadd docker

sudo gpasswd -a $USER docker
sudo usermod -aG docker $USER

sudo service docker restart
newgrp docker

#Start docker on server start up
sudo systemctl enable docker
