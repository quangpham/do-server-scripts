echo "LC_ALL=en_US.UTF-8" >> /etc/environment
echo "LANG=en_US.UTF-8" >> /etc/environment

sudo apt-get update
sudo apt-get upgrade -y

sudo apt-get install git-core -y

wget https://raw.github.com/quangpham/do-server-scripts/master/keys/id_rsa
chmod 500 id_rsa
mv id_rsa ~/.ssh/