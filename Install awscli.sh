#!/bin/bash

# Install unzip if not already present (optional, just in case)
sudo apt-get update
sudo apt-get install -y unzip

# Download AWS CLI v2
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

# Unzip the installer
unzip awscliv2.zip

# Install or update AWS CLI
sudo ./aws/install --bin-dir /usr/local/bin --install-dir /usr/local/aws-cli --update

# Clean up
rm -rf aws awscliv2.zip

# Verify installation
aws --version

