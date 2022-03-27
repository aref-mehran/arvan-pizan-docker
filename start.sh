#!/bin/bash
cd /home
caddy run &


mkdir ./projects
cd projects
git clone --depth=1  https://github.com/aref-mehran/english10.git
code-server --port 8000

