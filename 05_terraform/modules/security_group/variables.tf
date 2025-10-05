variable "security_group_ports" {
    description = "The ports to allow in the security group"
    type        = list(number)
    default     = [22, 80, 443]
}

variable "instance_name" {
  description = "The name of the instance"
  type        = string
}

variable "environment" {
  description = "The environment the instance is running in"
  type        = string
}

variable "project_name" {
  description = "The name of the project"
  type        = string
}

variable "security_group_name" {
  description = "The name of the security group"
  type        = string
  default     = "default-security-group"

}

variable "security_group_description" {
  description = "The description of the security group"
  type        = string
  default     = "Security group for the instance"
  
}
