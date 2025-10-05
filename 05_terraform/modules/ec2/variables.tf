variable "ami_id" {
  description = "The AMI ID to use for the instance"
  type        = string
}

variable "instance_type" {
  description = "The instance type to use"
  type        = string
}

variable "availability_zone" {
  description = "The availability zone to launch the instance in"
  type        = string
}


variable "key_name" {
  description = "The name of the key pair to use for SSH access"
  type        = string
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

variable "vpc_security_group_ids" {
  description = "The VPC security group IDs to associate with the instance"
  type        = list(string)
}

variable "stack_name" {
  description = "The name of the stack"
  type        = string
  default     = "my-terraform-stack"
}

variable "script_name" {
  description = "The name of the script to run on the instance (K3s or Docker)"
  type        = string
  default     = "my-terraform-stack"
}