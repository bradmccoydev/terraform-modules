resource "aws_iam_role" "default" {
  name = format("eks-%s-%s",var.name,var.environment)
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "eks.amazonaws.com"
        }
      },
    ]
  })

  tags = var.tags
}

resource "aws_iam_role" "node_group" {
  name = format("eks-%s-%s-node",var.name,var.environment)

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "ec2.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
}

resource "aws_iam_policy" "default_eks" {
  name        = format("eks-%s-%s",var.name,var.environment)
  description = "EKS ${var.environment} Policy"
  policy      = <<EOF
{
    "Statement": [
        {
          "Action": "ecr:*",
          "Effect": "Allow",
          "Resource": [
              "${aws_ecr_repository.default.arn}"
          ],
          "Sid": "VisualEditor1"
        }
    ],
    "Version": "2012-10-17"
}
EOF
}

resource "aws_iam_role_policy_attachment" "default" {
  for_each = toset([
    "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy",
    "arn:aws:iam::aws:policy/AmazonEKSVPCResourceController",
    aws_iam_policy.default_eks.arn
  ])
  policy_arn = each.value
  role       = aws_iam_role.default.name
}

resource "aws_iam_role_policy_attachment" "default" {
  for_each = toset([
    "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy",
    "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy",
    "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly",
    aws_iam_policy.default_eks.arn
  ])
  policy_arn = each.value
  role       = aws_iam_role.node_group.name
}

resource "aws_ecr_repository" "default" {
  name                 = format("%s-%s",var.name,var.environment)
  image_tag_mutability = "MUTABLE"
  tags                 = var.tags

  image_scanning_configuration {
    scan_on_push = true
  }
}

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
