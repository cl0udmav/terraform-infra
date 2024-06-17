resource "vpc" "vpc" {
  name = var.vpc_name
  cidr = var.vpc_cidr
  tags = {
    Name = var.vpc_name
  }
}