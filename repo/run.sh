#!/bin/sh

mkdir -p /home/president/repo
cd /home/president/repo

mkdir repo_${reponame}
yum -y install yum-plugin-downloadonly
yum -y install ${repos} --downloadonly --downloaddir=repo_${reponame}

yum -y install createrepo
createrepo --simple-md-filenames repo_${reponame}
echo ${repos} > repo_${reponame}.txt