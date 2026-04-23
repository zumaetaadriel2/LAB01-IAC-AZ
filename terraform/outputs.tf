output "urls_dev" {
  value = "Frontend: http://localhost:${var.web_port["dev"]} | API: ${var.api_port["dev"]}"
}

output "urls_qa" {
  value = "Frontend: http://localhost:${var.web_port["qa"]} | API: ${var.api_port["qa"]}"
}