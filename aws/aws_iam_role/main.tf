resource "aws_iam_role" "default" {
  name = var.role_name

  assume_role_policy = jsonencode(var.assume_policy_role_object)

  tags = var.tags
}