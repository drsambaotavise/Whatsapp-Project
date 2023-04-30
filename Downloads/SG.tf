#Create a security group to allow inbound traffic on port 443 and 80
resource "aws_security_group" "webtraffic" {
  name        = "Allow traffic"

  ingress {
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = [var.route]
   
  }

   ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = [var.route]
  }

  tags = {
    Name = "Allow traffic"
    Createdby = "M-W"
    Owner = "Group1"
  }
}