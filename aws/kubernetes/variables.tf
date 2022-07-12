variable "name" {
  type        = string
  description = "Name of AWS services."
}

variable "environment" {
  type        = string
  description = "Environment."
}

variable "role_name" {
  type        = string
  description = "Friendly name of the role. If omitted, Terraform will assign a random, unique name."
}

variable "policy_arn" {
  type        = string
  description = "Policy ARN if you want to attach policies"
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

variable "subnet_ids" {
  type        = list(string)
  description = "Network Subnet ID's."
}

variable "node_capacity_type" {
  type        = list(string)
  description = "Network Subnet ID's."
  default = "SPOT"
}

variable "node_instance_type" {
  type        = string
  description = "Node Instance Type."
  default = "t3.xlarge"
}

variable "node_min_size" {
  type        = string
  description = "Node Min Size."
  default = 1
}

variable "tags" {
  type = map(string)
}
