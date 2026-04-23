# Redes aisladas
resource "docker_network" "dev" { name = "net-dev" }
resource "docker_network" "qa"  { name = "net-qa" }

# --- ENTORNO DEV ---
resource "docker_container" "db_dev" {
  name  = "bd-dev"
  image = "postgres:15-alpine"
  networks_advanced { name = docker_network.dev.name }
  ports { internal = 5432; external = var.db_port["dev"] }
  env = ["POSTGRES_PASSWORD=pass"]
}

resource "docker_container" "api_dev" {
  name  = "api-dev"
  image = "node:18-alpine"
  networks_advanced { name = docker_network.dev.name }
  ports { internal = 3000; external = var.api_port["dev"] }
  command = ["tail", "-f", "/dev/null"]
}

resource "docker_container" "web_dev" {
  name  = "web-dev"
  image = "nginx:latest"
  networks_advanced { name = docker_network.dev.name }
  ports { internal = 80; external = var.web_port["dev"] }
}

# --- ENTORNO QA ---
resource "docker_container" "db_qa" {
  name  = "bd-qa"
  image = "postgres:15-alpine"
  networks_advanced { name = docker_network.qa.name }
  ports { internal = 5432; external = var.db_port["qa"] }
  env = ["POSTGRES_PASSWORD=pass"]
}

resource "docker_container" "api_qa" {
  name  = "api-qa"
  image = "node:18-alpine"
  networks_advanced { name = docker_network.qa.name }
  ports { internal = 3000; external = var.api_port["qa"] }
  command = ["tail", "-f", "/dev/null"]
}

resource "docker_container" "web_qa" {
  name  = "web-qa"
  image = "nginx:latest"
  networks_advanced { name = docker_network.qa.name }
  ports { internal = 80; external = var.web_port["qa"] }
}