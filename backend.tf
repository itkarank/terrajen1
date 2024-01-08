provider "aws" {
  region = "us-east-2"
}

terraform {
 backend "s3" {
bucket = "my-tf-testkris-bucket"
   key = "terraform.tfstate"
   region = "us-east-2"
   }
}
   
