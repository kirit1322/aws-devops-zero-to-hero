#!/bin/bash
set -e

echo "Stopping any container running on port 5000..."
docker ps -q --filter "publish=5000" | xargs -r docker stop
docker ps -aq --filter "publish=5000" | xargs -r docker rm

echo "Pulling latest image..."
docker pull kiritpatel1321/simple-python-flask-app

echo "Starting container..."
docker run -d -p 5000:5000 --name simple-flask-app kiritpatel1321/simple-python-flask-app

echo "Deployment completed!"