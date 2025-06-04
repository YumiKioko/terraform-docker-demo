terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.15.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "nginx" {
  name = "nginx:latest"
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.name
  name  = "my-nginx"

  ports {
    internal = 80
    external = 8080
  }
}
resource "docker_image" "backend" {
  name = "${var.dockerhub_username}/terraform-backend:latest"
}

resource "docker_container" "backend" {
  image = docker_image.backend.name
  name  = "my-backend"

  ports {
    internal = 3000   # Change this if your backend listens on a different port
    external = 5000
  }

#  env = [
#    "NODE_ENV=production",
#    "API_KEY=${var.api_key}",  # example of passing secret from Terraform variable
#  ]
  healthcheck {
    test     = ["CMD-SHELL", "curl -f http://localhost:3000/health || exit 1"]
    interval = "30s"
    timeout  = "10s"
    retries  = 3
  }
}
