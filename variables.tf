variable "aws_region" {
  description = "Region AWS utilizada por el laboratorio."
  type        = string
  default     = "us-east-1"
}

# Valores del caso demostrativo del laboratorio.
# Se mantienen fuera del modulo para demostrar reutilizacion
# y evitar acoplar la arquitectura a un escenario especifico.

variable "name_prefix" {
  description = "Prefijo utilizado para identificar los recursos del laboratorio."
  type        = string
  default     = "nexoandes-eval"
}

variable "vpc_cidr" {
  description = "Bloque CIDR de la VPC utilizado en el caso demostrativo."
  type        = string
  default     = "10.20.0.0/16"
}

variable "public_subnet_cidr" {
  description = "Bloque CIDR de la subred publica del caso demostrativo."
  type        = string
  default     = "10.20.10.0/24"
}

# Zona de disponibilidad utilizada por la subred publica.
# Se define explicitamente para evitar que AWS seleccione una zona sin capacidad.
variable "availability_zone" {
  description = "Zona de disponibilidad utilizada por el laboratorio."
  type        = string
  default     = "us-east-1a"
}

# Tipo de instancia utilizado por el servidor web
# del caso demostrativo del laboratorio.

variable "instance_type" {
  description = "Tipo de instancia EC2 utilizado por el laboratorio."
  type        = string
  default     = "t2.micro"
}


##variables para el script user_data_v1.sh.tpl
variable "student_name" {
  description = "Nombre del alumno evaluado."
  type        = string
  default     = "Cesar Cespedes"
}

variable "student_number" {
  description = "Número o ID del estudiante."
  type        = string
  default     = "2"
}

variable "environment" {
  description = "Entorno de ejecución (prod)."
  type        = string
  default     = "prod"
}

variable "portal_version" {
  description = "Portal NexoAndes"
  type        = string
  default     = "v1.0.0"
}

variable "project_name" {
  description = "Nombre del proyecto."
  type        = string
  default     = "NexoAndes"
}