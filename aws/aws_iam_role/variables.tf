variable "role_name" {
  type        = string
  description = "Friendly name of the role. If omitted, Terraform will assign a random, unique name."
}

variable "assume_policy_role_object" {
  type = object({
    Version = string
    Statement = list(
      object({
        Action = string
        Effect = string
        Principal = object({
          Service = string
        })
      })
    ),
  })

  description = <<DES
    Policy that grants an entity permission to assume the role. The object will be converted to JSON using `jsonencode` terraform function.
    {
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      },
    ]
  }
  DES
}

variable "tags" {
  type = map(string)
}
