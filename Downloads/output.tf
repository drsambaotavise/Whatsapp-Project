output "pubic_instance_ip" {
  description = "instance_public_ip"
  value = aws_instance.test.public_ip
}
output "private_instance_ip" {
  description = "instance_public_ip"
  value = aws_instance.test.private_ip
}
