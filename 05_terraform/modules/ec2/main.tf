resource "aws_instance" "this" {
  ami                     = var.ami_id
  instance_type           = var.instance_type
  availability_zone       = var.availability_zone

  vpc_security_group_ids  = var.vpc_security_group_ids
  key_name                = var.key_name
  associate_public_ip_address = true
  user_data               = var.script_name != "" ? file("${path.module}/${var.script_name}.sh") : null
  tags = {
    Name = var.instance_name
    Environnement = var.environment
    Project = var.project_name
  }
}

