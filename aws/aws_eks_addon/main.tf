resource "aws_eks_addon" "default" {
  cluster_name = var.cluster_name
  addon_name   = var.addon_name
}