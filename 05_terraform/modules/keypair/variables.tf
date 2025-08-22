variable "key_name" {
  description = "The name of the key pair"
  type        = string
}

variable "private_key_path" {
  description = "The path to the private key file"
  type        = string
  default     = "${path.module}/deployer-key.pem"
}