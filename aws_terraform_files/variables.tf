variable "aws_region" {
  default = "us-east-1"
}

variable "vpc_cidr" {
  default = "10.100.0.0/16"
}

variable "private_subnet_az1_cidr" {
  default = "10.100.1.0/24"
}

variable "private_subnet_az2_cidr" {
  default = "10.100.2.0/24"
}

variable "public_subnet_cidr" {
  default = "10.100.0.0/24"
}

variable "availability_zones" {
  default = ["us-east-1a", "us-east-1b"]
}

variable "key_name" {
  default = "bastion_key"
}