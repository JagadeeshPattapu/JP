resource "aws_security_group" "this" {
  name        = var.name
  description = var.description
  vpc_id      = var.vpc_id

  tags = var.tags
}

resource "aws_security_group_rule" "ingress_cidr" {
  for_each = { for i, rule in var.ingress_cidr_rules : i => rule }

  type              = "ingress"
  from_port         = each.value.from_port
  to_port           = each.value.to_port
  protocol          = each.value.protocol
  cidr_blocks       = each.value.cidr_blocks
  security_group_id = aws_security_group.this.id
  description       = each.value.description
}

resource "aws_security_group_rule" "ingress_sg" {
  for_each = { for i, rule in var.ingress_sg_rules : i => rule }

  type                     = "ingress"
  from_port                = each.value.from_port
  to_port                  = each.value.to_port
  protocol                 = each.value.protocol
  source_security_group_id = each.value.source_security_group_id
  security_group_id        = aws_security_group.this.id
  description              = each.value.description
}

resource "aws_security_group_rule" "egress_cidr" {
  for_each = { for i, rule in var.egress_cidr_rules : i => rule }

  type              = "egress"
  from_port         = each.value.from_port
  to_port           = each.value.to_port
  protocol          = each.value.protocol
  cidr_blocks       = each.value.cidr_blocks
  security_group_id = aws_security_group.this.id
  description       = each.value.description
}

resource "aws_security_group_rule" "egress_sg" {
  for_each = { for i, rule in var.egress_sg_rules : i => rule }

  type                     = "egress"
  from_port                = each.value.from_port
  to_port                  = each.value.to_port
  protocol                 = each.value.protocol
  source_security_group_id = each.value.source_security_group_id
  security_group_id        = aws_security_group.this.id
  description              = each.value.description
}
