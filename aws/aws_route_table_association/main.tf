resource "aws_route_table_association" "private_1" {
  subnet_id      = var.subnet_id
  route_table_id = var.route_table_id
}