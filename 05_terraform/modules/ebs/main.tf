resource "aws_ebs_volume" "this" {
  availability_zone = var.availability_zone
  size              = var.volume_size

 tags = {
    Name = var.instance_name
    Environnement = var.environment
    Project = var.project_name
    Stack = var.stack_name
  }
}

resource "aws_volume_attachment" "this" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.this.id
  instance_id = var.instance_id
}