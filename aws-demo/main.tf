provider "aws" {
  region     = "us-east-1"
  access_key = "no key"
  secret_key = "no password"
} 

resource "aws_instance" "ec2_example" {
    ami = "ami-0453ec754f44f9a4a"  
    instance_type = "t2.micro" 
    tags = {
        Name = "Terraform EC2"
    }
}