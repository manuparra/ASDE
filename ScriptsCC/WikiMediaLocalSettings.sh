scp LocalSettings.php azureuser@$1:LocalSettings.php
ssh azureuser@$1 "sudo docker cp LocalSettings.php some-mediawiki:/var/www/html/"
