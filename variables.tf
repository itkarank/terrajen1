
variable "vpc_cidr" {
  description = "CIDR block for VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for public subnet"
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR block for private subnet"
  default     = "10.0.2.0/24"
}

variable "public_subnet_az" {
  description = "Availability zone for public subnet"
  default     = "us-east-2a"
}

variable "private_subnet_az" {
  description = "Availability zone for private subnet"
  default     = "us-east-2b"
}

variable "ami" {
  description = "Amazon Machine Image (AMI) ID for EC2 instance"
  default     = "ami-0ee4f2271a4df2d7d" 
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.small"
}

variable "key_name" {
  description = "Name of the EC2 key pair"
  default     = "newkey"
}

variable "allowed_ip" {
  description = "Allowed IP address for SSH access"
  default     = "0.0.0.0/0" 
}
