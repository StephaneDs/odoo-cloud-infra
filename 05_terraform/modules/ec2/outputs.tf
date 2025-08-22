output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.this.id
}

output "public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = aws_instance.this.public_ip
}

output "availability_zone" {
  description = "The availability zone where the EC2 instance is launched"
  value       = aws_instance.this.availability_zone
  
}
