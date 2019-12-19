#!/usr/bin/bash
IMAGE_NAMES=$@
DOCKERFILE_TEMPLATE_PATH=./Dockerfile.template
REPOS="git nmap nc vim nano audit ausearch"

for IMAGE_NAME in $IMAGE_NAMES
do
REPO_NAME=$(echo ${IMAGE_NAME} | sed -e 's/[^0-9A-Za-z.]//g')
cat ${DOCKERFILE_TEMPLATE_PATH} | sed -e "s/^ENV reponame=.*$/ENV reponame=${REPO_NAME}/" -e "s/^ENV repos=.*$/ENV repos=\"${REPOS}\"/" -e "s/^FROM .*$/FROM ${IMAGE_NAME}/" > Dockerfile
docker build -t create_localrepo .
mkdir -p ./repo/${REPO_NAME}
docker run -it -v $(pwd)/repo/${REPO_NAME}:/home/president/repo/ --rm create_localrepo
done