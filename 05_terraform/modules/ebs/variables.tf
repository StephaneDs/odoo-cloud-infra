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

variable "availability_zone" {
  description = "The availability zone to create the volume in"
  type        = string

}

variable "volume_size" {
  description = "The size of the volume in GiB"
  type        = number
    default     = 40
}

variable "instance_id" {
  description = "The ID of the instance to attach the volume to"
  type        = string
  
}

variable "stack_name" {
  description = "The name of the stack"
  type        = string
  default     = "my-terraform-stack"
  
}