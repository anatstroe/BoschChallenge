# Ansible Playbook: Kubernetes Deployment

## Description
Ansible Playbook to deploy and configure a Kubernetes cluster on a single node and deploy a simple web application to the cluster.
Playboook tested on Ubuntu 20.04 LTS


## Prerequisites
* A virtual machine or server running a Linux distribution that allows inbound traffic on port 80 [tested on Azure VM]
* Ansible installed on the virtual machine or server
    * ```chmod +x ansibleinstall.sh``` to make the script executable
    * run ```./ansibleinstall.sh``` to install Ansible
    ```bash
    sudo ./ansibleinstall.sh
    ```
    * check ansible installation
    ```bash
    ansible --version
    ```
* docker login to dockerhub
    * ```docker login```
    * enter username and password


## Usage

```bash
ansible-playbook playbook.yml
```

## Directory Structure

```
BoschChallenge/
├── roles/
│   ├── build_docker_images/
│   │   ├── defaults/
│   │   |   └── main.yml
│   │   ├── files/
│   │   |   └── getting-started-app
│   │   └── tasks
│   │       └── main.yml
│   ├── k8s_single_node_cluster/
│   │   ├── defaults/
│   │   |   └── main.yml
│   │   ├── templates/
│   │   |   └── kubeconfig.j2
│   │   └── tasks
│   │       ├── initialize_kubernetes.yml
│   │       ├── ingress_set_up.yml
│   │       ├── install_kubernetes.yml
│   │       └── main.yml
│   ├── deploy_application/
│   │   ├── defaults/
│   │   |   └── main.yml
│   │   ├── templates/
│   │   |   ├── app-deployment.yaml.j2
│   │   |   ├── ingress.yaml.j2
│   │   |   └── mysql-deployment.yaml.j2
│   │   └── tasks
│   │       ├── deploy_app.yml
│   │       ├── deploy_ingress.yml
│   │       └── main.yml
├── inventory/
│   └── localhost.yml
└── playbook.yml
