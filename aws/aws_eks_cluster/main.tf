resource "aws_eks_cluster" "default" {
  name     = var.cluster_name
  role_arn = var.arn

  vpc_config {
    subnet_ids = var.subnet_ids
  }
}