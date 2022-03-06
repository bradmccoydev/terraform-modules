output "arn" {
  value = aws_eks_cluster.default.arn
}

output "id" {
  value = aws_eks_cluster.default.id
}

output "endpoint" {
  value = aws_eks_cluster.default.endpoint
}
