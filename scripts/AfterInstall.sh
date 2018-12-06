#!/bin/bash 
sudo curl -L "https://github.com/docker/compose/releases/download/1.10.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
sudo yum install -y awslogs
sudo sed -i 's/us-east-1/ap-northeast-1/g' /etc/awslogs/awscli.conf
sudo sed -i 's/\/var\/log\/messages/\/home\/ec2-user\/deploy\/Harry_Dev\/code\/my.log/g' /etc/awslogs/awslogs.conf
sudo service awslogs start
cd /home/ec2-user/deploy/Harry_Line/code
aws s3 cp s3://key/secret_key .
exit 0

