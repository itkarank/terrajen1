resource "aws_s3_bucket" "terraform_state" {
  bucket = "fgbhshbsbdcgcugbcb"
  acl    = "private"  

 versoning {
      enabled = true
}

terraform {
  backend "s3" {
    bucket         = aws_s3_bucket.terraform_state.bucket
    key            =  "hiwsiwiwggw"
    region         = "us-east-1"  
    encrypt        = true          
   }
}
