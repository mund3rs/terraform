variable "subnet_ids" {
  description = "List of subnet IDs for EFS mount targets"
  type        = list(string)
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}
