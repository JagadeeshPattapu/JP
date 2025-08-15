variable "test_s3_bucket_name" {
  type = string
}
variable "web-sg-name" {
  type = string
}
variable "web-sg-description" {
  type = string
}
variable "web-sg-vpc_id" {
  type = string
}
variable "web-sg-ingress_cidr_rules" {
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
    description = optional(string, "")
  }))
  default = []
}
variable "web-sg-egress_cidr_rules" {
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
    description = optional(string, "")
  }))
  default = []
}