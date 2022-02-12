resource "aws_iam_role_policy_attachment" "default" {
  policy_arn = var.policy_arn
  role       = var.role
}