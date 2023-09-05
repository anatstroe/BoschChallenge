# Ansible Docker Image Build Role

This Ansible role is designed to build a Docker image for a specified application and push it to Docker Hub.

## Role Variables

The following variables can be set to configure the role:

- `docker_image_name`: The name of the Docker image to build.
- `docker_image_tag`: The tag to apply to the Docker image.
- `docker_build_context`: The path to the directory containing the Dockerfile and application files.

## Usage

1. Add this role to your Ansible playbook.
2. Set the required variables in your playbook or inventory file.
3. Run the playbook to build the Docker image and push it to Docker Hub.
