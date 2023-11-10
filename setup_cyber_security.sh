
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
pip3 install tensorflow keras torch torchvision torchaudio scikit-image opencv-python jupyterlab seaborn plotly xgboost lightgbm nltk spacy gensim notebook

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

# Install VirtualBox
echo "Installing VirtualBox..."
$pkgm install -y virtualbox

# Install Vagrant
echo "Installing Vagrant..."
$pkgm install -y vagrant

# Install Docker Compose
echo "Installing Docker Compose..."
$pkgm install -y docker-compose

# Install Ansible
echo "Installing Ansible..."
$pkgm install -y ansible

# Install Prometheus and Grafana
echo "Installing Prometheus..."
$pkgm install -y prometheus
echo "Installing Grafana..."
$pkgm install -y grafana

# Install Postman
echo "Installing Postman..."
$pkgm install -y postman

# Install Ngrok
echo "Installing Ngrok..."
$pkgm install -y ngrok

# Install Firewall tools
echo "Installing UFW..."
$pkgm install -y ufw
echo "Installing Fail2Ban..."
$pkgm install -y fail2ban

# Install Additional IDEs and Text Editors
echo "Installing Visual Studio Code..."
$pkgm install -y code

# Install Additional Python Packages
echo "Installing Flask..."
pip3 install flask
echo "Installing Django..."
pip3 install django

# Install Cloud CLI Tools
echo "Installing AWS CLI..."
$pkgm install -y awscli
echo "Installing Azure CLI..."
$pkgm install -y azure-cli
echo "Installing Google Cloud SDK..."
$pkgm install -y google-cloud-sdk

# Install NVIDIA drivers
echo "Installing NVIDIA drivers..."
$pkgm install -y nvidia-driver

# Install nvidia-smi
echo "Installing nvidia-smi..."
$pkgm install -y nvidia-smi

# Web Development Tools
echo "Installing Nginx and Apache..."
$pkgm install -y nginx apache2

# Security Tools
echo "Installing ClamAV and Lynis..."
$pkgm install -y clamav lynis

# Network Tools
echo "Installing Wireshark and tcpdump..."
$pkgm install -y wireshark tcpdump

# Container Orchestration
echo "Installing Kubernetes CLI (kubectl) and minikube..."
$pkgm install -y kubectl minikube

# Performance Monitoring Tools
echo "Installing Telegraf and InfluxDB..."
$pkgm install -y telegraf influxdb

# Virtualization Tools
echo "Installing QEMU and KVM..."
$pkgm install -y qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils

# Version Control Systems
echo "Installing Mercurial and SVN..."
$pkgm install -y mercurial subversion

# Testing Tools
echo "Installing Selenium and SoapUI..."
$pkgm install -y selenium soapui

# System Management Tools
echo "Installing Cockpit..."
$pkgm install -y cockpit

# Software Packaging Tools
echo "Installing Snap and Flatpak..."
$pkgm install -y snapd flatpak

# Install PyAudio and its dependencies
echo "Installing PyAudio and PortAudio..."
$pkgm install -y python3-pyaudio portaudio19-dev

# Complete
echo "Setup completed!"
