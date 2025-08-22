resource "aws_instance" "this" {
  ami                     = var.ami_id
  instance_type           = var.instance_type
  availability_zone       = var.availability_zone
  security_groups         = var.security_groups_id
  key_name                = var.key_name
  associate_public_ip_address = true
  user_data               = file("${path.module}/user_data.sh")
  tags = {
    Name = var.instance_name
    Environnement = var.environment
    Project = var.project_name
  }
}

