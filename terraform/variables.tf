variable "api_port" {
  type = map(number)
  description = "Puertos para el Backend"
}

variable "web_port" {
  type = map(number)
  description = "Puertos para el Frontend"
}

variable "db_port" {
  type = map(number)
  description = "Puertos para la Base de Datos"
}