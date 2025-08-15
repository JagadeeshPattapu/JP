variable "name" {
  description = "Name of the security group"
  type        = string
}

variable "description" {
  description = "Description of the security group"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID where the SG will be created"
  type        = string
}

variable "tags" {
  description = "Tags to apply to the security group"
  type        = map(string)
  default     = {}
}

variable "ingress_cidr_rules" {
  description = "List of ingress CIDR rules"
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
    description = optional(string, "")
  }))
  default = []
}

variable "ingress_sg_rules" {
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

variable "egress_cidr_rules" {
  description = "List of egress CIDR rules"
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
    description = optional(string, "")
  }))
  default = []
}

variable "egress_sg_rules" {
  description = "List of egress rules using destination security group IDs"
  type = list(object({
    from_port                = number
    to_port                  = number
    protocol                 = string
    source_security_group_id = string
    description              = optional(string, "")
  }))
  default = []
}
