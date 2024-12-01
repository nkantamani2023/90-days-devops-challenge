#!/bin/bash

# updating the packages
echo "Updating package lists ......."
sudo apt update -y

#Install Nginx
echo "Installing Nginx"
sudo apt install nginx -y

#Start Nginx service
echo "Starting NGINX Service"
sudo systemctl start nginx

# Enable NGINX to start
echo "Enabling NGINX to start"
sudo systemctl enable nginx

# Configure firewall to allow HTTP and HTTPS traffic
echo "Configuring the firewall..."
sudo ufw allow 'Nginx Full'

# Check NGINX status
echo "Checking NGINX status..."
sudo systemctl status nginx

# Print success message
echo "NGINX installation and configuration completed successfully!"