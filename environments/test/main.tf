module "s3" {
  source      = "../../modules/s3"
  bucket_name = var.test-s3-bucket-name
}
module "web_sg" {
  source             = "../../modules/SG"
  name               = var.web_sg_name
  description        = var.web_sg_description
  vpc_id             = var.web_sg_vpc_id
  ingress_cidr_rules = var.web_sg_ingress_cidr_rules
  #ingress_sg_rules   =  var.web_sg_ingress_sg_rules
  ingress_sg_rules = [
    {
      from_port                = 80
      to_port                  = 80
      protocol                 = "tcp"
      source_security_group_id = module.weblb_sg.security_group_id
      description              = "Allow HTTP from LB"
    }
  ]
  egress_cidr_rules = var.web_sg_egress_cidr_rules
  depends_on        = [module.weblb_sg]
}
module "weblb_sg" {
  source             = "../../modules/SG"
  name               = var.weblb_sg_name
  description        = var.weblb_sg_description
  vpc_id             = var.weblb_sg_vpc_id
  ingress_cidr_rules = var.weblb_sg_ingress_cidr_rules
  egress_cidr_rules  = var.weblb_sg_egress_cidr_rules
}
