resource "aws_vpc" "test-vpc" {
  cidr_block = var.vpc_cidr_block
  tags = {
    Name = "test-vpc"
  }
}