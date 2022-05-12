resource "random_string" "random" {
  length  = 3
  special = false
  upper   = false
  lower   = true
  number  = false
}

resource "aws_secretsmanager_secret" "default" {
  name = "${var.secret_name}-${random_string.random.result}"
}

resource "aws_lambda_function" "default" {
  function_name    = var.name
  description      = var.description
  role             = var.lambda_role_arn
  handler          = var.lambda_handler
  runtime          = var.lambda_runtime
  s3_bucket        = var.lambda_s3_bucket
  s3_key           = var.lambda_s3_bucket_key
  memory_size      = 512
  timeout          = 300
  source_code_hash = base64encode(sha256("~/Development/ACS-GitLab/self-service/build/AddUserToJiraGroup/main.zip"))
  environment {
    variables = {
      secret_id = aws_secretsmanager_secret.default.id
    }
  }
}
