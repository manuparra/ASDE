sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update
sudo apt-cache policy docker-ce
sudo apt install -y docker-ce
sudo docker run -d -e POSTGRES_USER=odoo -e POSTGRES_PASSWORD=odoo -e POSTGRES_DB=postgres --name db postgres:10
sudo docker run -p 80:8069 --name odoo --link db:db -t odoo
sudo ufw allow from any to any port 80 proto tcp

echo "-----------------------------------------"
echo "  Terminada la instalacion del ERP ODOO"
echo "-----------------------------------------"
