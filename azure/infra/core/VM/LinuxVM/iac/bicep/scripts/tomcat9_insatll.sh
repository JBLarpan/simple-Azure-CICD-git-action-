#!/bin/bash

# Update package lists
sudo apt update

# Install Apache Tomcat
sudo apt install -y tomcat9

# Restart Tomcat to apply the changes
sudo systemctl restart tomcat9
