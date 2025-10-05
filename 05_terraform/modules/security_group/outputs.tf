output "security_group_ids" {
  value = [aws_security_group.this.id]
}

output "security_group_names" {
  value = [aws_security_group.this.name]
}