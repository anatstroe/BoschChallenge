# Ansible Kubernetes Application Deployment Role

This Ansible role is designed to deploy a Kubernetes application and its dependencies.

## Role Variables

The following variables can be set to configure the role:

- `app_namespace`: The name of the Kubernetes namespace to deploy the application to.
- `app_name`: The name of the Kubernetes deployment for the application.
- `app_service_name`: The name of the Kubernetes service for the application.
- `sql_name`: The name of the Kubernetes deployment for the MySQL database.
- `sql_service_name`: The name of the Kubernetes service for the MySQL database.
- `persistent_volume_name`: The name of the Kubernetes persistent volume for the MySQL database.
- `persistent_volume_claim_name`: The name of the Kubernetes persistent volume claim for the MySQL database.
- `ingress_name`: The name of the Kubernetes ingress for the application.
- `app_labels`: The labels to apply to the Kubernetes deployment and service for the application.
- `sql_labels`: The labels to apply to the Kubernetes deployment and service for the MySQL database.
- `pv_labels`: The labels to apply to the Kubernetes persistent volume for the MySQL database.
- `app_replica_count`: The number of replicas to deploy for the application.
- `mysql_replica_count`: The number of replicas to deploy for the MySQL database.
- `mysql_root_password`: The root password for the MySQL database. To be stored in a Kubernetes secret.
- `mysql_database`: The name of the MySQL database to create.
- `sql_secret_name`: The name of the Kubernetes secret for the MySQL database credentials.
- `ingress_host`: The hostname to use for the Kubernetes ingress for the application.
- `ip_of_VM`: The IP address of the target machine running the Kubernetes cluster.
- `docker_image_name`: The name of the Docker image for the application.
- `docker_image_tag`: The tag of the Docker image for the application.

## Usage

1. Add this role to your Ansible playbook.
2. Set the required variables in your playbook or inventory file.
3. Create a template for the Kubernetes deployment YAML file for the application and MySQL database.
4. Run the playbook to deploy the application and MySQL database.
