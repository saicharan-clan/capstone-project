resource "aws_vpc" "capstone" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "capstone"
  }
}
