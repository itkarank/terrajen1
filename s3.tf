resource "aws_s3_bucket" "b" {
  bucket = "my-tf-testkris-bucket"
  acl    = "private"
  tags = {
    Name        = "My tf bucket"
  }
}

 backend "s3" {
bucket = "my-tf-testkris-bucket"
   key = "terraform.tfstate"
   region = "us-east-2"
   }
   
