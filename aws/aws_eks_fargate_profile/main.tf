resource "aws_eks_fargate_profile" "default" {
  cluster_name           = var.cluster_name
  fargate_profile_name   = var.fargate_profile_name
  pod_execution_role_arn = var.aws_iam_role_arn
  subnet_ids             = var.aws_subnet_ids

  selector {
    namespace = var.selector_namespace
    labels    = var.selector_labels
  }

  tags = var.tags
}