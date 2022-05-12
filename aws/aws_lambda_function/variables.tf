# Lambda

variable "function_name" {
  type        = string
  description = "Name"
}

variable "function_description" {
  type        = string
  description = "Name"
}

variable "lambda_role_arn" {
  type        = string
  description = "Lambda Role ARN"
}

variable "lambda_runtime" {
  type        = string
  description = "Lambda Runtime"
  default = "go1.x"
}

variable "lambda_handler" {
  type        = string
  description = "Lambda Handler"
}

variable "lambda_s3_bucket" {
  type        = string
  description = "Lambda S3 Bucket"
}

variable "lambda_s3_bucket_key" {
  type        = string
  description = "Lambda S3 Bucket"
}

variable "secret_name" {
  type        = string
  description = "Secret Name"
}


variable "tags" {
  type        = map(string)
  description = "Tags"
}
