provider "aws" {
  region = "us-east-1"  # Change to your desired AWS region
}

resource "aws_instance" "ghost_instance" {
  ami           = "ami-03a6eaae9938c858c"  # Specify the desired AMI ID
  instance_type = "t2.micro"  # Adjust instance type as needed
  key_name      = "ghost-key-pair"  # Specify your key pair name

  tags = {
    Name = "GhostInstance"
  }
}

output "instance_ip" {
  value = aws_instance.ghost_instance.public_ip
}
