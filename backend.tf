terraform {
 backend "s3" {
 bucket = "my-karankrishnan-bucket"
 key = "terraform.tfstate"
 region = "us-east-2"
}
}
