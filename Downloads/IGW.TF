# Internet Gateway configuration
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.group1_vpc.id

  tags = {
    Name = "internet-gateway"
  }
}

# Route Table configuration
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.group1_vpc.id

  route {
    cidr_block = var.route
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "public-route-table"
  }
}

# Associate public subnet with public route table
resource "aws_route_table_association" "public" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.public.id
}