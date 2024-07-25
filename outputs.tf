output "alb_dns_name" {
  value = module.loadbalancer.alb_dns_name
}

output "cloudfront_domain_name" {
  value = module.cloudfront.cloudfront_domain_name
}

output "s3_bucket_name" {
  value = module.s3.s3_bucket_name
}

output "rds_endpoint" {
  value = module.rds.rds_endpoint
}

output "route53_zone_id" {
  value = module.route53.route53_zone_id
}
