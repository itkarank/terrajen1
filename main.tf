provider "aws" {
  region = "us-east-2" 
  access_key = "AKIAVB534CRJSCNZ3R6P"
  secret_key = "XQAGjDMidDF5nVBZmxGS14LPZOG96MV7NIPYaElb"
}

resource "aws_vpc" "example_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "example-vpc"
  }
}

resource "aws_subnet" "example_subnet" {
  vpc_id     = aws_vpc.example_vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-2a"
  tags = {
    Name = "example-subnet"
  }
}

resource "aws_instance" "example_instance" {
  ami           = "ami-0ee4f2271a4df2d7d"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.example_subnet.id

  tags = {
    Name = "example-instance"
  }
}
