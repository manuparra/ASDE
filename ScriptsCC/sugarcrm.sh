sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update
sudo apt-cache policy docker-ce
sudo apt install -y docker-ce
sudo docker run --name sugarcrm_db -e MYSQL_ROOT_PASSWORD=33333 -d mariadb
sudo docker run --name sugarcrm -d --link sugarcrm_db:mysql -p 80:80 franzabzieher/sugarcrm
sudo ufw allow from any to any port 80 proto tcp

echo "-----------------------------------------"
echo "  Terminada la instalacion de SUGAR ERP  "
echo "-----------------------------------------"


