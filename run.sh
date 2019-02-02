#!/usr/bin/env bash

docker kill my-nginx || echo "my-nginx is already killed"
docker rm my-nginx || echo "my-nginx not exist"
docker run -d -p 80:80 --name my-nginx jefftian/tapd-webhook:$1

autossh -M 0 -R 80:localhost:80 serveo.net
