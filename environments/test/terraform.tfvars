test_s3_bucket_name = "test-s3-bkt-test"
web-sg-name         = "web-sg"
web-sg-description  = "this is for webserver"
web-sg-vpc_id       = "vpc-087dad59de2e76c03"
web-sg-ingress_cidr_rules = [{
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
web-sg-egress_cidr_rules = [{
  from_port   = 0
  to_port     = 0
  protocol    = "-1"
  cidr_blocks = ["0.0.0.0/0"]
}]