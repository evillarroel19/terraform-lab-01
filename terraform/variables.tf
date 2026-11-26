variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-2"
}

variable "unique_id" {
  description = "Identificador para nombrar los recursos"
  type        = string
  default     = "terraform-lab"

  validation {
    condition     = can(regex("^[a-z0-9-]+$", var.unique_id))
    error_message = "Solo se permiten letras minusculas, numeros y guiones."
  }
}

variable "instance_type" {
  description = "Tipo de instancia EC2"
  type        = string
  default     = "t3.micro"
}