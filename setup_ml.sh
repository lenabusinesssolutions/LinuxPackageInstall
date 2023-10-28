#!/bin/bash

#package manager (as default apt)
pkgm="apt"
release_name=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2-)

# Check if the script is run as root
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root"
   exit 1
fi

# Check the distro
if [[ -f /etc/os-release ]]; then
   echo "Distribution: $release_name"

   if echo "$release_name" | grep -qi "ubuntu"; then
      pkgm="apt"
   elif echo "$release_name" | grep -qi "debian"; then
      pkgm="apt"
   elif echo "$release_name" | grep -qi "centos"; then
      pkgm="rpm"
   elif echo "$release_name" | grep -qi "fedora"; then
      pkgm="yum"
   else
      echo "This distribution is not specifically recognized."
   fi
else
   echo "Unable to determine Linux distribution. Using default package manager as 'apt'"
fi


# Update package lists
echo "Updating package lists..."
$pkgm update

# Upgrade existing packages
echo "Upgrading existing packages..."
$pkgm upgrade -y

# Install basic build tools
echo "Installing basic build tools..."
$pkgm install -y build-essential curl wget git vim tmux htop unzip

# Install Python and pip
echo "Installing Python3 and pip..."
$pkgm install -y python3 python3-pip python3-venv

# Install Python dev tools and libraries
echo "Installing Python dev tools..."
pip3 install numpy pandas matplotlib scikit-learn

# Install additional Python packages for ML and DL
echo "Installing additional Python packages for machine learning and deep learning..."
pip3 install tensorflow keras pytorch scikit-image opencv-python jupyterlab seaborn plotly xgboost lightgbm nltk spacy gensim

# Install Node.js
echo "Installing Node.js..."
curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
$pkgm install -y nodejs

# Install Java
echo "Installing Java..."
$pkgm install -y openjdk-11-jdk

# Install Docker
echo "Installing Docker..."
$pkgm install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
$pkgm update
$pkgm install -y docker-ce

# Install MySQL client
echo "Installing MySQL client..."
$pkgm install -y mysql-client

# Install PostgreSQL client
echo "Installing PostgreSQL client..."
$pkgm install -y postgresql-client

# Install additional useful tools
echo "Installing additional useful tools..."
$pkgm install -y tree ncdu

# Complete
echo "Setup completed!"