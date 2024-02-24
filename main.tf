# Amazon Linux EC2 Instance

resource "aws_instance" "my_instance" {
count = 2
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = "subnet-0ba60291691470713"
 key_name      = "newkey"
  security_groups =  [aws_security_group.instance_sg.id]
  associate_public_ip_address = true

  tags = {
    Role  =  count.index == 0 ? "CI/CD server" : "production server"
  }
}





