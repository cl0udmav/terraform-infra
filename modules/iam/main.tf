resource "aws_iam_role" "eks_cluster" {
    name = var.cluster_role_name
    assume_role_policy = jsonencode({
        Statement = [{
            Action = "sts:AssumeRole"
            Effect = "Allow"
            Principal = {
                Service = "eks.amazonaws.com"
            }
        }]
        Version = "2012-10-17"
    })
}