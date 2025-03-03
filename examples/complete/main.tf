module "vpc" {
  source = "./modules/networking"

  vpc_config = {
    cidr_block = "10.0.0.0/16"
    name       = "example_vpc"
  }

  subnet_config = {
    subnet_1 = {
      cidr_block = "10.0.0.0/24"
      az         = "us-east-2a"
      # Public subnets are indicated by setting the "public" option to true.
      public = true
    }
    subnet_2 = {
      cidr_block = "10.0.1.0/24"
      az         = "us-east-2a"
      public     = false
    }
  }
}