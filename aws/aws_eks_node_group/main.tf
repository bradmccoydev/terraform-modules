resource "aws_eks_node_group" "default" {
  cluster_name    = var.cluster_namename
  node_group_name = var.node_group_name
  node_role_arn   = var.arn
  subnet_ids      = var.subnet_id
  disk_size       = var.disk_size
  instance_types  = [var.kubernetes_node_size]

  scaling_config {
    desired_size = 1
    max_size     = 1
    min_size     = 1
  }

  lifecycle {
    ignore_changes = [scaling_config[0].desired_size]
  }

  tags = var.tags
}