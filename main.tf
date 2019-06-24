resource "aws_security_group" "admin_access" {
  name = "admin-access-${var.vpc_id}"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.allowed_admin_cidrs
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  vpc_id = var.vpc_id

  lifecycle {
    create_before_destroy = true
  }

  tags = {
    Namespace = var.namespace
    Stage     = var.stage
    Owner     = var.owner
  }
}

