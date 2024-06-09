#!/bin/bash
# Install dependencies or perform other setup tasks

# Change to the directory where the docker-compose.yml file is located
cd "$(dirname "$0")"

# Check if the docker-compose.yml file exists in the current directory
if [ -f docker-compose.yml ]; then
    # If the file exists, pull Docker images using docker-compose
    docker-compose pull
else
    # If the file does not exist, print an error message
    echo "Error: docker-compose.yml file not found."
    exit 1
fi
