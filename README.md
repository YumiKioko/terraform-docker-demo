terraform-docker-demo

terraform-docker-demo is a demonstration project that combines Terraform, Docker, Ansible, and Node.js to provision infrastructure, configure Docker containers, and deploy backend services efficiently.
Features

    Infrastructure provisioning with Terraform (Docker + Nginx)

    Configuration management with Ansible playbooks

    Containerized backend service with Node.js

    Automated deployment and setup workflows

    Integration with GitHub Actions for security scans

Repository Structure

.github/workflows/       # CI/CD workflows (e.g., zap-dast.yml)
.terraform/providers/    # Terraform providers cache
backend/                 # Node.js backend service code
Dockerfile               # Dockerfile for backend service
inventory.ini            # Ansible inventory
main.tf                  # Terraform configuration
terraform.tfstate        # Terraform state files
terraform_docker.yml     # Ansible playbook for Docker setup
variables.tf             # Terraform variables

Prerequisites

    Terraform >= 1.8.4

    Docker

    Ansible

    Node.js (for backend service)

Installation & Usage

    Clone the repository:

git clone https://github.com/baltazaryumi/terraform-docker-demo.git
cd terraform-docker-demo

    Initialize Terraform:

terraform init

    Apply Terraform configuration:

terraform apply

    Run the Ansible playbook:

ansible-playbook -i inventory.ini terraform_docker.yml

    Build and run the backend Docker container:

docker build -t terraform-backend .
docker run -p 3000:3000 terraform-backend

    Access the backend service at:

http://localhost:3000

Contributing

Contributions are welcome! Please open an issue or pull request.
