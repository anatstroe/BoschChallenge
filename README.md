# Ansible Playbook: Kubernetes Deployment

## Description
Create deployment scripts using Ansible to deploy an application to some target servers (or virtual machines). This application contains two services: the main application and a database. The database is a MySQL database. The application is a simple web application that connects to the database and displays some information from the database. The application is packaged as a Docker container. The database is also packaged as a Docker container. The application and database containers are deployed to the target servers using Kubernetes. The application uses ingress controller.

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
│   │       └── docker_build.yml
│   ├── k8s_single_node_cluster/
│   │   ├── defaults/
│   │   |   └── main.yml
│   │   ├── templates//
│   │   |   └── kubeconfig.j2
│   │   └── tasks
│   │       ├── initialize_kubernetes.yml
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
└── my_playbook.yml
