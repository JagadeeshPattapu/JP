module "s3" {
  source      = "../../modules/s3"
  bucket_name = var.test_s3_bucket_name
}
module "web-sg" {
  source             = "../../modules/SG"
  name               = var.web-sg-name
  description        = var.web-sg-description
  vpc_id             = var.web-sg-vpc_id
  ingress_cidr_rules = var.web-sg-ingress_cidr_rules
  egress_cidr_rules  = var.web-sg-egress_cidr_rules
}