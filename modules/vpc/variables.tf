variable "vpc_name" {
  description = "value of the vpc name"
  default = "terraform-eks-vpc"
}

variable "vpc_cidr" {
  description = "value of the vpc cidr"
  default = "10.20.0.0/24"
}