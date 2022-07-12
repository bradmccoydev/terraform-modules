resource "aws_iam_role" "default" {
  name                      = var.role_name
  assume_role_policy_object = jsonencode(var.assume_policy_role_object)

  tags = var.tags
}

resource "aws_iam_role_policy_attachment" "default" {
  for_each = toset(var.policy_arns)

  policy_arn = each.value
  role       = aws_iam_role.default.name
}
