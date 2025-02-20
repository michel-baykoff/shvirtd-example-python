#!/bin/bash

# if Docker not installed
if ! command -v docker 2>&1 > /dev/null; then
        echo Docker not installed. Installing...
        curl -fsSL https://get.docker.com -o install-docker.sh
        bash /home/oper/install-docker.sh
else
        echo Docker present.
fi

#If there is no git installing
if ! command -v git 2>&1 > /dev/null; then
        echo git not installed. Installing...
        apt update && apt install -y git
else
        echo Git installed.
fi

echo Cloning project repository.

git clone https://github.com/michel-baykoff/shvirtd-example-python.git

cd ./shvirtd-example-python

echo Building project...
docker compose build

echo Starting project.
docker compose up -d
