variable "instance_type" {
  description = "The type of instance to create"
  type        = string
  default     = "t3.medium"
}
variable "security_group_ports" {
  description = "The ports to allow in the security group"
  type        = list(number)
  default     = [22, 80, 443, 8080, 8069, 5050, 8081, 6443]
}

variable "script_name" {
  description = "The name of the script to run on the instance(K3s or Docker)"
  type        = string
  #default     = "docker"
  validation {
    condition     = var.script_name == "" || contains(["docker", "k3s"], var.script_name)
    error_message = "script_name must be '',either 'docker' or 'k3s'"
  }
}
variable "stack_name" {
  description = "The name of the stack to deploy(k3s or docker)"
  type        = string
  default     = "test"
  
}