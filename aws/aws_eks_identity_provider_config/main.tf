resource "aws_eks_identity_provider_config" "default" {
  cluster_name = var.aws_cluster_name

  oidc {
    client_id                     = var.client_id
    identity_provider_config_name = var.id_provider_config_name
    issuer_url                    = var.issuer_url
  }

  tags = var.tags
}