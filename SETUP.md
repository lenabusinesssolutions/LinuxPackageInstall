# Setup Script for Linux Machines

This setup script automates the installation of various packages and tools on a Linux machine. The script must be run as the root user.

## Pre-requisites

- A Linux machine with `apt` package management (Ubuntu, Debian, etc.)
- Root access to the machine

## How to Use

1. Download the `setup.sh` script to your machine.
2. Open a terminal and navigate to the directory where `setup.sh` is located.
3. Make the script executable:
   ```bash
   chmod +x setup.sh
   ```
4. Run the script as root:
   ```bash
   sudo ./setup.sh
   ```

### If Using a Remote or Cloud Linux Machine

To copy the script to a remote machine, execute the following:

```bash
scp -i "path/to/your.pem" "path/to/setup.sh" username@remote_address:/path/to/remote/directory
```

To copy for home:
```bash
scp -i "path/to/your.pem" "path/to/setup.sh" username@remote_address:~
```

or

```bash
scp -i "path/to/your.pem" "path/to/setup.sh" username@remote_address:/home/ec2-user/setup.sh
```

To SSH into the remote machine:

```bash
ssh -i "path/to/your.pem" username@remote_address
```

Then execute the following commands to run the script:

```bash
chmod +x setup.sh
sudo ./setup.sh
```


- Note: When transferring and running scripts between different operating systems, it's important to ensure compatibility, especially regarding newline characters, as these can cause scripts to fail in unexpected ways. The `dos2unix` utility is one of the simplest ways to convert file formats from Windows-style to Unix-style line endings.

```
sudo yum install dos2unix
dos2unix setup.sh
```

## What Does The Script Do?

- Checks if the script is being run as root
- Updates package lists
- Upgrades existing packages
- Installs basic build tools like compilers, curl, wget, git, vim, etc.
- Installs Python3, pip, and Python's `venv` module
- Installs various Python packages and libraries for data science, machine learning, and deep learning
- Installs Node.js
- Installs OpenJDK 11 (Java)
- Installs Docker
- Installs MySQL and PostgreSQL clients
- Installs additional tools like `tree` and `ncdu`

## Packages and Tools Installed

### Basic Build Tools

- build-essential
- curl
- wget
- git
- vim
- tmux
- htop
- unzip

### Python and Data Science Tools

- python3
- python3-pip
- python3-venv
- numpy
- pandas
- matplotlib
- scikit-learn

### Additional Python Packages for ML and DL

- tensorflow
- keras
- pytorch
- scikit-image
- opencv-python
- jupyterlab
- seaborn
- plotly
- xgboost
- lightgbm
- nltk
- spacy
- gensim
- note

### Other Tools

- Node.js
- OpenJDK 11
- Docker
- MySQL client
- PostgreSQL client
- tree
- ncdu
