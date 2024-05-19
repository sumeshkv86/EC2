provider "aws" {
   region     = "us-east-1"
}


resource "aws_instance" "ec2_example" {

   ami           = "ami-05fa00d4c63e32376"
   subnet_id     = "subnet-0a70a567c36632424"
   key_name      = "keypair"
   instance_type =  "t2.micro"
   count = 1
   associate_public_ip_address = var.enable_public_ip

   tags = {
           Name = "Terraform EC2"
   }

}

variable "enable_public_ip" {
  description = "Enable public IP address"
  type        = bool
  default     = true
} 
