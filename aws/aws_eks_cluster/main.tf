resource "aws_eks_cluster" "default" {
  name     = var.cluster_name
  role_arn = var.cluster_role_arn

  vpc_config {
    endpoint_public_access = var.endpoint_public_access
    subnet_ids             = var.subnet_ids
  }
}
