scp $2 azureuser@$1:$2
ssh azureuser@$1 "sudo docker cp $2 some-mediawiki:/var/www/html/"
