resource "aws_instance" "myec2" {
    ami = "ami-026b57f3c383c2eec"
    instance_type = var.ec2type
    tags = local.common_tags

  }


locals {
  # Common tags to be assigned to all resources..
  common_tags = {
    Service = "appservice"
    Owner   = "birlasoft"
  }
}


variable "ec2type" {
    description = "this is my ec2 instance type"
    type = string
    default = "t2.medium"
}

output "ec2_ip" {
  value = aws_instance.myec2.public_ip
} 
