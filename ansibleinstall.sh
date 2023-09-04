# bash script to install ansible on Ubuntu 20.04
#!/bin/bash

# Update the package list and install dependencies
sudo apt update
sudo apt install -y software-properties-common

# Add the Ansible repository and update the package list again
sudo add-apt-repository --yes --update ppa:ansible/ansible

# Install Ansible
sudo apt install -y ansible

# Verify the installation
ansible --version

echo "Ansible has been successfully installed."
