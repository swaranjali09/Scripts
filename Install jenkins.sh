#!/bin/bash
# For Ubuntu 22.04

# Update packages
sudo apt update -y

# Install Java (OpenJDK 11)
sudo apt install openjdk-17-jdk -y
java --version

# Add Jenkins repository and key
curl -fsSL https://pkg.jenkins.io/debian/jenkins.io-2023.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null

# Update package index and install Jenkins
sudo apt update -y
sudo apt install jenkins -y
