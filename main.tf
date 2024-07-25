provider "aws" {
  region = var.region
}

module "vpc" {
  source = "./modules/vpc"

  name = "DMWS-WP-VPC"
  cidr = "10.0.0.0/16"

  azs             = ["eu-north-1a", "eu-north-1b", "eu-north-1c"]
  public_subnets  = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  private_subnets = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]

  enable_nat_gateway = true
  single_nat_gateway = true

  tags = {
    Terraform = "true"
    Environment = "prod"
  }
}

module "s3" {
  source = "./modules/s3"
}

module "ec2" {
  source = "./modules/ec2_instance"
}

module "autoscaling" {
  source = "./modules/autoscaling"
}

module "loadbalancer" {
  source = "./modules/loadbalancer"
}

module "cloudfront" {
  source = "./modules/cloudfront"
}

module "rds" {
  source = "./modules/rds"
}

module "route53" {
  source = "./modules/route53"
}

module "bastion" {
  source = "./modules/bastion"
}

module "efs" {
  source = "./modules/efs"
}
