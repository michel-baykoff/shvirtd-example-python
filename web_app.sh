#!/bin/bash

# if Docker not installed
docker_present=$(dpkg -l | grep docker)
if ! command -v docker; then
        echo Docker not installed. Installing...
        curl -fsSL https://get.docker.com -o install-docker.sh
        bash /home/oper/install-docker.sh
else
        echo Docker present.
fi

#If there is no git installing
if ! command -v git; then
        echo git nat installed. Installing...
        apt update && apt install -y git
else
        echo Git installed.
fi

echo Cloning project repository.

git clone #!/bin/bash

# if Docker not installed
docker_present=$(dpkg -l | grep docker)
if ! command -v docker; then
        echo Docker not installed. Installing...
        curl -fsSL https://get.docker.com -o install-docker.sh
        bash /home/oper/install-docker.sh
else
        echo Docker present.
fi

#If there is no git installing
if ! command -v git; then
        echo git nat installed. Installing...
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


cd ./virtd-homeworks/05-virt-04-docker-in-practice/shvirtd-example-python

echo Building project...
docker compose build

echo Starting project.
docker compose up -d
