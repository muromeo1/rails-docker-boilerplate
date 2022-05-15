#!/bin/bash

read -p 'Enter new project name: ' name
grep -lR "????" env-example | xargs sed -i "s/????/$name/g"
mkdir ../$name
cp -a ../"$(basename $PWD)"/. ../$name
cd ../$name
rm -rf ./new_app.sh
rm -rf ../"$(basename $PWD)"
rm -rf .git
git init
