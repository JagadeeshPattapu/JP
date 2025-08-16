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
webserver_name = "nginx server"
webserver_ami_id = "ami-0de716d6197524dd9"
webserver_instance_type = "t2.micro"
webserver_key_name = "nginx"
webserver_subnet_id = "subnet-0bcf76ccbf9ab8b4a"