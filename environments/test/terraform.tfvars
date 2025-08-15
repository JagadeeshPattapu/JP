test-s3-bucket-name = "test-s3-bkt-test"
web_sg_name         = "web_sg"
web_sg_description  = "this is for webserver"
web_sg_vpc_id       = "vpc-087dad59de2e76c03"
web_sg_ingress_cidr_rules = [{
  from_port   = 22
  to_port     = 22
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  },
  {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
]
web_sg_egress_cidr_rules = [{
  from_port   = 0
  to_port     = 0
  protocol    = "-1"
  cidr_blocks = ["0.0.0.0/0"]
}]
weblb_sg_name        = "weblb_sg"
weblb_sg_description = "this is for webloadbalancer"
weblb_sg_vpc_id      = "vpc-087dad59de2e76c03"
weblb_sg_ingress_cidr_rules = [
  {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
]
weblb_sg_egress_cidr_rules = [{
  from_port   = 0
  to_port     = 0
  protocol    = "-1"
  cidr_blocks = ["0.0.0.0/0"]
}]
