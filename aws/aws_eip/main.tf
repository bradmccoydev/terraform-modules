resource "aws_eip" "nat" {
  vpc = var.vpc
}