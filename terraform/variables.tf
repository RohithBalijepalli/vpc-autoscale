variable "aws_region" {
  description = "The AWS region to deploy resources in."
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC."
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr1" {
  description = "The CIDR block for the first public subnet."
  default     = "10.0.1.0/24"
}

variable "public_subnet_cidr2" {
  description = "The CIDR block for the second public subnet."
  default     = "10.0.2.0/24"
}

variable "private_subnet_cidr1" {
  description = "The CIDR block for the first private subnet."
  default     = "10.0.3.0/24"
}

variable "private_subnet_cidr2" {
  description = "The CIDR block for the second private subnet."
  default     = "10.0.4.0/24"
}

variable "instance_type" {
  description = "The instance type for EC2 instances."
  default     = "t2.micro"
}

variable "ami_id" {
  description = "The AMI ID for EC2 instances."
  default     = "ami-0ba9883b710b05ac6"
}

variable "s3_bucket_name" {
  description = "The name of the S3 bucket."
  default     = "s3-gateway-bucket"
}

variable "key_name" {
  default = "main-key"
}
