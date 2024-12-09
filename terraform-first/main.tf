terraform {
  required_providers {
    aws={
        source = "hashicorp/aws"
        version = "5.10.0"
    }
  }
}

provider "aws" {
    region = "us-east-1"
    access_key = "no password"
    secret_key = "no password"
  
}

resource "aws_instance" "web" {
    ami = "ami-0453ec754f44f9a4a"
    instance_type ="t2.nano"
    tags = {
      Name="hello world"
    }
  
}