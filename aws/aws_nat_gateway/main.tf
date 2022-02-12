resource "aws_nat_gateway" "default" {
  allocation_id = var.allocation_id
  subnet_id     = var.subnet_id
}