# Terraform settings block
terraform {
    required_providers {
        aws = {
      source = "hashicorp/aws"
      version = "~> 4.11.0" # Optional but recommended in production
      
    }
  
  }
}

# Provider Block
provider "aws" {
  profile = "default" # AWS Credentials Profile configured on your local desktop terminal  $HOME/.aws/credentials
  region  = "us-east-1"
}

# Resource Block
resource "aws_instance" "ec2demo" {
  ami           = "ami-0f9fc25dd2506cf6d" # Amazon Linux in us-east-1, update as per your region
  instance_type = "t2.micro"
}