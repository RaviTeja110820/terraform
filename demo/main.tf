terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-west-2" # Change this to your desired region
}

resource "aws_instance" "example_instance" {
  ami           = "ami-00970f57473724c10" # Amazon Linux 2 AMI, replace with your desired AMI
  instance_type = "t2.micro"              # Instance type, adjust as needed

  tags = {
    Name = "AppServerInstance"
  }
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "demo-ravi1108201234567" # Replace with a unique bucket name

}

output "instance_id" {
  value = aws_instance.example_instance.id
}

output "bucket_name" {
  value = aws_s3_bucket.example_bucket.id
}
