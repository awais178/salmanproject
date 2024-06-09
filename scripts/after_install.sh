#!/bin/bash
# Install dependencies or perform other setup tasks

# Navigate to the root directory of the Git repository
cd $CODEDEPLOYMENT_SOURCE

# Check if the docker-compose.yml file exists
if [ -f docker-compose.yml ]; then
    # If the file exists, pull Docker images using docker-compose
    docker-compose pull
else
    # If the file does not exist, print an error message
    echo "Error: docker-compose.yml file not found."
    exit 1
fi
