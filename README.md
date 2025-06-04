![Terraform Docker CI](https://github.com/YumiKioko/terraform-docker-demo/actions/workflows/terraform-docker.yml/badge.svg)

terraform-docker-demo

This repository demonstrates how to use **Terraform** to provision infrastructure and **Docker** to containerize and deploy applications.

🧩 Overview

`terraform-docker-demo` provides an example setup that integrates:

- **Terraform** for Infrastructure as Code (IaC)
- **Docker** for containerization
- Basic configuration via `variables.tf`
- A sample `Dockerfile` for application packaging

This project is designed to serve as a starting point or reference for combining Docker and Terraform in cloud-native workflows.

📁 Repository Structure

terraform-docker-demo/
├── Dockerfile           # Sample Dockerfile to build an application container
├── main.tf              # Terraform configuration script
├── variables.tf         # Input variables for Terraform
├── outputs.tf           # Terraform output values (if any)
└── README.md            # Project documentation

🛠 Prerequisites

To work with this demo, you will need:

- [Docker](https://docs.docker.com/get-docker/)
- [Terraform](https://developer.hashicorp.com/terraform/install)
- Cloud provider credentials (e.g., AWS CLI configured, if deploying to AWS)

🚀 Getting Started

> This is a demonstration repo. Customize the scripts and variables as needed for your infrastructure or deployment targets.

1. Clone the repository:
   
   git clone https://github.com/your-username/terraform-docker-demo.git
   cd terraform-docker-demo

2. (Optional) Review and modify `variables.tf` to suit your setup.

3. Initialize and apply Terraform (if deploying infrastructure):

   terraform init
   terraform apply

4. Build the Docker image:

   docker build -t terraform-demo .

📜 License

This project is provided for demo purposes.

👤 Author

Maintained by AF(https://github.com/YumiKioko)
