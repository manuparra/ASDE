#!/bin/bash
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update
sudo apt-cache policy docker-ce
sudo apt install -y docker-ce
sudo docker pull mediawiki
#sudo docker run --name=mediawiki_wiki -p 80:8080 -e MEDIAWIKI_SERVER=http://localhost:80 -e MEDIAWIKI_SITENAME=SistemaDocumental -e MEDIAWIKI_LANGUAGE_CODE=es  -e MEDIAWIKI_DB_TYPE=sqlite  -e MEDIAWIKI_DB_NAME=wikidb  -e MEDIAWIKI_ENABLE_UPLOADS=1  -v /var/mediawiki/images:/images  -v /var/mediawiki/data:/data -d kristophjunge/mediawiki
#sudo docker exec -it mediawiki_wiki /script/install.sh admin admin
sudo ufw allow from any to any port 80 proto tcp
sudo docker run --name some-mediawiki -p 80:80 -d mediawiki




