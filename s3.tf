resource "aws_s3_bucket" "b" {
  bucket = "my-karankrishnan-bucket"
  acl    = "private"
  tags = {
    Name        = "My tf bucket"
  }
}
