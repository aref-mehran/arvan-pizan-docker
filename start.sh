#!/bin/bash
cd /home

mkdir ./projects
cd projects
git clone --depth=1  https://github.com/aref-mehran/english10.git

git clone --depth=1  https://github.com/aref-mehran/arvan-pizan-docker.git
cd arvan-pizan-docker
chmod +x ./run.sh
./run.sh &
caddy run &

code-server --port 8000



