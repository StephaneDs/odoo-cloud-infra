resource "aws_security_group" "this" {
  name        = var.security_group_name
  description = var.security_group_description

    dynamic "ingress" {
      for_each = var.security_group_ports

      content {
        from_port   = ingress.value
        to_port     = ingress.value
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
      }
    }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  tags = {
    Name = var.instance_name
    Environnement = var.environment
    Project = var.project_name
  }
}