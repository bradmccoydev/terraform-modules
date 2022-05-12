resource "aws_s3_bucket" "default" {
  bucket = var.name

  tags = var.tags
}

resource "aws_s3_bucket_acl" "default" {
  bucket = aws_s3_bucket.default.id
  acl    = "private"
}