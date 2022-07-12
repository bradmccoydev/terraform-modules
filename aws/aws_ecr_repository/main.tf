resource "aws_ecr_repository" "default" {
  name                 = var.name
  image_tag_mutability = "MUTABLE"
  tags                 = var.tags

  image_scanning_configuration {
    scan_on_push = true
  }
}
