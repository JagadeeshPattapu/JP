variable "test-s3-bucket-name" {
  type = string
}
variable "web_sg_name" {
  type = string
}
variable "web_sg_description" {
  type = string
}
variable "web_sg_vpc_id" {
  type = string
}
variable "web_sg_ingress_cidr_rules" {
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
    description = optional(string, "")
  }))
  default = []
}
variable "web_sg_egress_cidr_rules" {
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
    description = optional(string, "")
  }))
  default = []
}
variable "web_sg_ingress_sg_rules" {
  description = "List of ingress rules using source security group IDs"
  type = list(object({
    from_port                = number
    to_port                  = number
    protocol                 = string
    source_security_group_id = string
    description              = optional(string, "")
  }))
  default = []
}
variable "weblb_sg_name" {
  type = string
}
variable "weblb_sg_description" {
  type = string
}
variable "weblb_sg_vpc_id" {
  type = string
}
variable "weblb_sg_ingress_cidr_rules" {
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
    description = optional(string, "")
  }))
  default = []
}
variable "weblb_sg_egress_cidr_rules" {
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
    description = optional(string, "")
  }))
  default = []
}