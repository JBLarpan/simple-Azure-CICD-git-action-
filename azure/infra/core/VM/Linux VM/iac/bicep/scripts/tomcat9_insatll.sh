#!/bin/bash

# Update package lists
sudo apt update

# Install Apache Tomcat
sudo apt install tomcat9

# Create a directory for the "Hello World" content (if it doesn't exist)
sudo mkdir -p /var/www/html

# Create a simple HTML file with "Hello World" content
echo "Hello World" | sudo tee /var/www/html/index.html

# Restart Tomcat to apply the changes
sudo systemctl restart tomcat9
