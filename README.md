# terraform-aws-networking-simple
This module manages the creation of VPCs and subnets, allowing for the creation of both private and public subnets.

Example usage:
```
module "vpc" {
  source  = "The-Shy7/networking-simple/aws"

  vpc_config = {
    cidr_block = "10.0.0.0/16"
    name       = "example_vpc"
  }

  subnet_config = {
    subnet_1 = {
      cidr_block = "10.0.0.0/24"
      az         = "us-east-2a"
      public     = true
    }
    subnet_2 = {
      cidr_block = "10.0.1.0/24"
      az         = "us-east-2a"
      public     = false
    }
  }
}
```