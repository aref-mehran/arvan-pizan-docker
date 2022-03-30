#!/bin/bash
echo run.sh started ....

cd /home/projects

git clone --depth=1 -b dist https://github.com/aref-mehran/ionic-react-music-app.git

cd /home/projects/arvan-pizan-docker
caddy run &

cd /home/projects
mkdir .well-known 
cp /home/projects/english10/assetlinks.json .well-known/


code-server --port 8000 


