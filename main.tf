terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "4.15.1"
        }
    }
}

provider "aws" {
    region = var.aws_region
}

module "eks" {
  source = "./modules/eks"
  cluster_role_arn = module.iam.cluster_role_arn.arn
}

module "vpc" {
  source = "./modules/vpc"
}

module "iam" {
  source = "./modules/iam"
}