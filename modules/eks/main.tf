resource "aws_eks_cluster" "cluster" {
    name     = var.cluster_name
    role_arn = module.iam.cluster_role_arn.arn
    vpc_config {
        subnet_ids = module.vpc.subnet_ids
    }
}