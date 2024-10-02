#!/bin/bash
# Update and install Node.js
sudo apt-get update -y
sudo apt-get upgrade -y

# Install Node.js (latest LTS version)
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install Git if required (optional)
sudo apt-get install -y git

# Navigate to the home directory
cd /home/ubuntu

# Clone your frontend app repository (replace with your repo URL)
git clone https://github.com/your-repo/frontend-app.git

# Navigate into the app directory
cd frontend-app

# Install Node.js dependencies
npm install

# Install AWS SDK
npm install aws-sdk

# Set dynamic SQS Queue URL from Terraform variable
echo "export SQS_QUEUE_URL=${sqs_queue_url}" >> /etc/environment

# Load environment variables
source /etc/environment

# Start the Node.js app
npm start
