variable "aws_region" {
  description = "AWS region for resources"
  default     = "us-east-1"
}

variable "instance_ami" {
  description = "AMI ID for the EC2 instance"
  default     = "ami-03a6eaae9938c858c"
}

variable "instance_type" {
  description = "Instance type for the EC2 instance"
  default     = "t2.micro"
}

variable "key_name" {
  description = "Name of your EC2 key pair"
  default     = "ghost-key-pair"
}
