resource "aws_eks_cluster" "default" {
    name = var.cluster_name
    role_arn = aws_iam_role.example.arn

    vpc_config {
        subnet_ids = [var.subnet_example1_id, var.subnet_example2_id]
    }
}