#!/bin/bash -ex
touch /home/ec2-user/container_log
touch /home/ec2-user/start_log
sudo docker ps > /home/ec2-user/container_log
containerNum=sudo cat /home/ec2-user/container_log|wc -l
  sleep 5
  if [ "$containerNum" == "5"  ]; then
    	echo "deploy success!" > /home/ec2-user/start_log
	break
  else
	echo "deploy fail" > /home/ec2-user/start_log
fi
exit 0
