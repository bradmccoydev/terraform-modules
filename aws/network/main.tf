resource "aws_vpc" "default" {
  cidr_block           = var.cidr_block
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags                 = var.tags
}

resource "aws_network_acl" "default" {
  vpc_id = aws_vpc.default.id
  tags   = var.tags
}

resource "aws_internet_gateway" "default" {
  vpc_id = aws_vpc.default.id
  tags   = var.tags
}

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.default.id
}

resource "aws_route" "public" {
  route_table_id         = aws_route_table.public.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.default.id
}

resource "aws_subnet" "public" {
  count = length(var.public_subnet_cidrs)

  vpc_id                  = aws_vpc.default.id
  cidr_block              = var.public_subnet_cidrs[count.index]
  availability_zone       = var.availability_zones[count.index]
  map_public_ip_on_launch = true
  tags                    = var.tags
}

resource "aws_route_table_association" "public" {
  count = length(var.public_subnet_cidrs)

  subnet_id      = element(aws_subnet.public.*.id, count.index)
  route_table_id = aws_route_table.public.id
}

resource "aws_subnet" "private" {
  count = length(var.private_subnet_cidrs)

  vpc_id            = aws_vpc.default.id
  cidr_block        = var.private_subnet_cidrs[count.index]
  availability_zone = var.availability_zones[count.index]
  tags              = var.tags
}
#------------------------------------------------------------------------------
# AZ 1
#------------------------------------------------------------------------------
resource "aws_eip" "nat_az_a" {
  vpc = true
}

resource "aws_nat_gateway" "nat_az_a" {
  allocation_id = aws_eip.nat_az_a.id
  subnet_id     = aws_subnet.public[0].id
  depends_on    = [aws_internet_gateway.default]
}

resource "aws_route_table" "private_az_a" {
  vpc_id = aws_vpc.default.id
}

resource "aws_route_table_association" "private_az_a" {
  subnet_id      = aws_subnet.private[0].id
  route_table_id = aws_route_table.private_az_a.id
}

resource "aws_route" "private_az_a" {
  route_table_id         = aws_route_table.private_az_a.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.nat_az_a.id
}

resource "aws_eip" "nat_az_b" {
  vpc = true
}

resource "aws_nat_gateway" "nat_az_b" {
  depends_on    = [aws_internet_gateway.default]
  allocation_id = aws_eip.nat_az_b.id
  subnet_id     = aws_subnet.public[1].id
}

resource "aws_route_table" "private_az_b" {
  vpc_id = aws_vpc.default.id
}

resource "aws_route_table_association" "private_az_b" {
  subnet_id      = aws_subnet.private[1].id
  route_table_id = aws_route_table.private_az_b.id
}

resource "aws_route" "private_az_b" {
  route_table_id         = aws_route_table.private_az_b.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.nat_az_b.id
}
