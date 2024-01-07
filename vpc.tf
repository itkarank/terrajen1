# VPC

resource "aws_vpc" "my_vpc" {
  cidr_block = var.vpc_cidr
}

# Public Subnet

resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = var.public_subnet_cidr
  availability_zone = var.public_subnet_az
}

# Private Subnet

resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = var.private_subnet_cidr
  availability_zone = var.private_subnet_az
}

# Internet Gateway

resource "aws_internet_gateway" "my_igw" {
  vpc_id = aws_vpc.my_vpc.id
}

# Route Table for Public Subnet

resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.my_vpc.id
route {
  cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.my_igw.id
}
}

# Route Table Association for Public Subnet

resource "aws_route_table_association" "public_rta" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.public_route_table.id
}
