#!/bin/bash

read -p 'Enter new project name: ' name
cp -a ../rails-docker-boilerplate ../$name
cd ../$name
rm -rf ./new_app.sh
grep -lR "????" ./env-example | xargs sed -i "s/????/$name/g"
sudo rm -rf ../rails-docker-boilerplate
rm -rf .git
git init -q
git checkout -qb main
