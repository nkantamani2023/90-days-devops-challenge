#!/bin/bash

# Deploy a Django app and handle errors

# Function to clone the Django app code
code_clone() {
    echo "Cloning the Django app..."
    if [ -d "django-notes-app" ]; then
        echo "The code directory already exists. Skipping clone."
    else
        git clone https://github.com/nkantamani2023/django-notes-app.git || {
            echo "Failed to clone the repository. Exiting."
            exit 1
        }
    fi
    cd django-notes-app || { echo "Failed to enter the project directory. Exiting."; exit 1; }
}

# Function to install required dependencies
install_requirements() {
    echo "Installing dependencies..."
    sudo apt-get update -y && sudo apt-get install -y docker.io nginx docker-compose || {
        echo "Failed to install dependencies. Exiting."
        exit 1
    }
}

# Function to perform required restarts
required_restarts() {
    echo "Performing required restarts..."
    sudo chown "$USER" /var/run/docker.sock || {
        echo "Failed to change ownership of docker.sock. Exiting."
        exit 1
    }

    sudo systemctl enable docker || echo "Failed to enable Docker on boot."
    sudo systemctl enable nginx || echo "Failed to enable NGINX on boot."
    sudo systemctl restart docker || echo "Failed to restart Docker."
    sudo systemctl restart nginx || echo "Failed to restart NGINX."
}

# Function to deploy the Django app
deploy() {
    echo "Building and deploying the Django app..."
    docker build -t notes-app . || {
        echo "Failed to build the Docker image. Exiting."
        exit 1
    }
    docker-compose up -d || {
        echo "Failed to start the Docker Compose services. Exiting."
        exit 1
    }
}

# Main deployment script
echo "********** DEPLOYMENT STARTED *********"

# Clone the code
code_clone

# Install dependencies
install_requirements

# Perform required restarts
required_restarts

# Deploy the app
deploy

echo "********** DEPLOYMENT DONE *********"
