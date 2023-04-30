#Create Ec2 instance with key pair "today"
resource "aws_instance" "test" {
  ami           = var.amiid
  instance_type = var.instance_type
  key_name   = var.key
  associate_public_ip_address = true
  security_groups = [aws_security_group.webtraffic.name]
  tags = {
    Name = "test-terraform-ec2"
    Createdby = "M-W"
    Owner = "Group1"
  }
  
}