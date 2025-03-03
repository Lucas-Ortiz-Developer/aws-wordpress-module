resource "aws_alb" "application_load_balancer_wordpress" {
  name               = "${var.cliente}-${var.environment}-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.alb_sg.id]
  subnets            = [var.public_subnet_id]

  enable_deletion_protection = true

  access_logs {
    bucket  = aws_s3_bucket.alb_access_logs.id
    prefix  = "alb"
    enabled = true
  }

  tags = {
    Owner       = "Ortiz"
    Environment = var.environment
    Terraform   = "true"
  }

}