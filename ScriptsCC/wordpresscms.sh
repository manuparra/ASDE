
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update
sudo apt-cache policy docker-ce
sudo apt install -y docker-ce

docker run --name some-nginx  -d -p 80:80 raulr/nginx-wordpress

sudo ufw allow from any to any port 80 proto tcp

echo "-------------------------------------------"
echo "  Terminada la instalacion de WORDPRESS ERP  "
echo "-------------------------------------------"
