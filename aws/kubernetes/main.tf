resource "aws_eks_cluster" "default" {
  name     = format("%s-%s",var.name,var.environment)
  role_arn = aws_iam_role.default.arn

  vpc_config {
    subnet_ids = [aws_subnet.public_1.id, aws_subnet.public_2.id]
  }
}

resource "aws_eks_node_group" "default" {
  cluster_name    = aws_eks_cluster.default.name
  node_group_name = format("%s-%s",var.name,var.environment)
  node_role_arn   = aws_iam_role.node_group.arn
  capacity_type   = var.node_capacity_type
  subnet_ids      = [aws_subnet.public_1.id, aws_subnet.public_2.id]
  instance_types  = [var.node_instance_type]

  scaling_config {
    desired_size = var.node_min_size
    max_size     = 3
    min_size     = var.node_min_size
  }

  lifecycle {
    ignore_changes = [scaling_config[0].desired_size]
  }

  depends_on = [
    aws_iam_role_policy_attachment.default[0],
    aws_iam_role_policy_attachment.default[1],
    aws_iam_role_policy_attachment.default[2],
  ]
}
