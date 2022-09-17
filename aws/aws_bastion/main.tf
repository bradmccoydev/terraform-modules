resource "tls_private_key" "default" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "default" {
  key_name   = var.name
  public_key = tls_private_key.default.public_key_openssh
}

resource "random_string" "random" {
  length  = 3
  special = false
  upper   = false
  lower   = true
}

resource "aws_secretsmanager_secret" "default" {
  name = "${var.name}-${random_string.random.result}"
}

locals {
  secret = {
    private_key = tls_private_key.default.private_key_openssh
    public_key  = tls_private_key.default.public_key_openssh
  }
}

resource "aws_secretsmanager_secret_version" "default" {
  secret_id     = aws_secretsmanager_secret.default.id
  secret_string = jsonencode(local.secret)
}

resource "aws_eip" "default" {
  instance = aws_instance.default.id
  vpc      = true
  tags     = var.tags
}

data "aws_ami" "default" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"]
}

resource "aws_instance" "default" {
  ami                         = data.aws_ami.default.id
  instance_type               = var.instance_type
  key_name                    = aws_key_pair.default.key_name
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = [aws_security_group.hn_bastion_sg.id, aws_default_security_group.default.id]
  associate_public_ip_address = true
  user_data                   = var.user_data
  metadata_options {
    http_tokens = "required"
  }

  root_block_device {
    encrypted = true
  }

  tags = var.tags
}

#tfsec:ignore:aws-vpc-no-public-egress-sgr
resource "aws_security_group" "hn_bastion_sg" {
  name   = var.name
  vpc_id = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.ips_to_whitelist
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

#tfsec:ignore:aws-vpc-no-public-egress-sgr
resource "aws_default_security_group" "default" {
  vpc_id = var.vpc_id

  ingress {
    protocol  = -1
    self      = true
    from_port = 0
    to_port   = 0
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
