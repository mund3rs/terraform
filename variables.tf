variable "region" {
  default = "eu-north-1"
}

variable "key_name" {
  description = "Name of the SSH key pair"
  type        = string
}

variable "instance_type" {
  description = "Instance type for EC2 instances"
  default     = "t3.micro"
}

variable "elastic_ip" {
  description = "Elastic IP for the load balancer"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "public_subnets" {
  description = "Public subnets"
  type        = list(string)
}

variable "private_subnets" {
  description = "Private subnets"
  type        = list(string)
}

variable "db_username" {
  description = "Username for RDS instance"
  type        = string
  default     = "dmwsdbadmin"
}

variable "db_password" {
  description = "Password for RDS instance"
  type        = string
  sensitive   = true
}

variable "domain_name" {
  description = "Domain name for Route 53"
  type        = string
}

variable "acm_certificate_arn" {
  description = "ACM certificate ARN"
  type        = string
}
