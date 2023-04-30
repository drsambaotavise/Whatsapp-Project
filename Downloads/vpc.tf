#Creation of new vpc
resource "aws_vpc" "group1_vpc" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "Group1_VPC"
    Createdby = "M-W"
    Owner = "Group1"
  }
}

#subnet 1
resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.group1_vpc.id
  cidr_block = var.publicsubnet_cidr
  availability_zone = var.availability_zone_pubsub
  tags = {
    Name = "Public-subnet"
    Createdby = "M-W"
    Owner = "Group1"
  }
}

#subnet 2
resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.group1_vpc.id
  cidr_block = var.privatesubnet_cidr
  availability_zone = var.availability_zone_privsub
  tags = {
    Name = "private-subnet"
    Createdby = "M-W"
    Owner = "Group1"
  }
}



