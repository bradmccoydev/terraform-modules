output "arn" {
  value = aws_eks_cluster.default.arn
}

output "id" {
  value = aws_eks_cluster.default.id
}

output "name" {
  value = aws_eks_cluster.default.name
}

output "endpoint" {
  value = aws_eks_cluster.default.endpoint
}

output "certificate_authority" {
  sensitive = true
  value     = aws_eks_cluster.default.certificate_authority
}
