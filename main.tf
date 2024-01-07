# Amazon Linux EC2 Instance

resource "aws_instance" "my_instance" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = aws_subnet.public_subnet.id
  key_name      = var.key_name
  security_groups = [aws_security_group.instance_sg.id]
  associate_public_ip_address = true

  tags = {
    Name = "MyEC2Instance"
  }
}





