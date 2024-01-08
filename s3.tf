resource "aws_s3_bucket" "b" {
  bucket = "my-tf-testkris-bucket"
  acl    = "private"
  tags = {
    Name        = "My tf bucket"
  }
}
