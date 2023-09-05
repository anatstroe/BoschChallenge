# Ansible Kubernetes Installation Role

This Ansible role is designed to install Kubernetes on a target machine.

## Role Variables

The following variables can be set to configure the role:

- `kubernetes_version`: The version of Kubernetes to install.
- `docker_version`: The version of Docker to install.
- `pod_network_cidr`: The CIDR block to use for the Kubernetes pod network.
- `kube_config_dir`: The directory to store Kubernetes configuration files.
- `kube_config_file`: The path to the Kubernetes admin configuration file.
- `temp_directory`: The directory to store temporary files.
- `kubernetes_api_server`: The URL of the Kubernetes API server.

## Usage

1. Add this role to your Ansible playbook.
2. Set the required variables in your playbook or inventory file.
3. Run the playbook to install Kubernetes on the target machine.
