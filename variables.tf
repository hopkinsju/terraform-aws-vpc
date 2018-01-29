variable "access_key" {
  description = "AWS access key"
}

variable "secret_key" {
  description = "AWS secret access key"
}

variable "vpc_name" {
  description = "Name for our NEW VPC"
  default = "TerraformdVPC"
}

variable "vpc_region" {
  description = "Which region shall we place our VPC in"
  default = "us-east-1"
}