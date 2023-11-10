#!/bin/bash

# Check if the script is run as root
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root"
   exit 1
fi

# Update package lists
echo "Updating package lists..."
apt update

# Upgrade existing packages
echo "Upgrading existing packages..."
apt upgrade -y

# Install basic build tools
echo "Installing basic build tools..."
apt install -y build-essential curl wget git vim tmux htop unzip

# Install Python and pip
echo "Installing Python3 and pip..."
apt install -y python3 python3-pip python3-venv

# Install Python dev tools and libraries
echo "Installing Python dev tools..."
pip3 install numpy pandas matplotlib scikit-learn

# Install additional Python packages for ML and DL
echo "Installing additional Python packages for machine learning and deep learning..."
pip3 install tensorflow keras torch torchvision torchaudio scikit-image opencv-python jupyterlab seaborn plotly xgboost lightgbm nltk spacy gensim notebook

# Install Node.js
echo "Installing Node.js..."
curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
apt install -y nodejs

# Install Java
echo "Installing Java..."
apt install -y openjdk-11-jdk

# Install Docker
echo "Installing Docker..."
apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt update
apt install -y docker-ce

# Install MySQL client
echo "Installing MySQL client..."
apt install -y mysql-client

# Install PostgreSQL client
echo "Installing PostgreSQL client..."
apt install -y postgresql-client

# Install additional useful tools
echo "Installing additional useful tools..."
apt install -y tree ncdu

# Complete
echo "Setup completed!"