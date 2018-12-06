#!/bin/bash -ex
echo "Logging in to AWS ECR and pull images"
$(aws ecr get-login --no-include-email --region ap-northeast-1)
docker pull 022723172521.dkr.ecr.ap-northeast-1.amazonaws.com/api:latest
docker pull 022723172521.dkr.ecr.ap-northeast-1.amazonaws.com/jupyter:latest
docker pull 022723172521.dkr.ecr.ap-northeast-1.amazonaws.com/mysql:latest
docker pull 022723172521.dkr.ecr.ap-northeast-1.amazonaws.com/redis:latest
exit 0

