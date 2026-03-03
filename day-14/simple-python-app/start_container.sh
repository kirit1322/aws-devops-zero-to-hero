#!/bin/bash
set -e

echo "Stopping existing container (if running)..."
docker stop simple-flask-app || true
docker rm simple-flask-app || true

echo "Pulling latest Docker image..."
docker pull kiritpatel1321/simple-python-flask-app

echo "Running new container..."
docker run -d -p 5000:5000 --name simple-flask-app kiritpatel1321/simple-python-flask-app

echo "Deployment completed successfully!"
