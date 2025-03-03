##########################
# SECURITY GROUP RDS     #
##########################
resource "aws_security_group" "rds_sg" {
  name        = "${var.cliente}-${var.environment}-rds-sg"
  description = "Security group for Relational Database Service"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "allow HTTPS traffic"
  }
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "allow HTTP traffic"
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Owner       = "Ortiz"
    Environment = var.environment
    Terraform   = "true"
  }
}