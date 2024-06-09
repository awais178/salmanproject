#!/bin/bash
# Validate that the Docker containers are running
docker ps | grep your-container-name
if [ $? -ne 0 ]; then
  echo "Container is not running."
  exit 1
fi
echo "Container is running."
