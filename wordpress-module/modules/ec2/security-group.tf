##########################
# SECURITY GROUP OPENVPN #
##########################
resource "aws_security_group" "openvpn_sg" {
  name        = "${var.cliente}-${var.environment}-openvpn-sg"
  description = "Security group for OpenVPN instance"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 1194
    to_port     = 1194
    protocol    = "udp"
    cidr_blocks = ["0.0.0.0/0"]
    }
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    }

   egress {
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
   }

   tags = {
    Owner = "Ortiz"
    Environment = var.environment
    Terraform = "true"
   }
}

############################
# SECURITY GROUP WORDPRESS #
############################
resource "aws_security_group" "wordpress_sg" {
  name        = "${var.cliente}-${var.environment}-openvpn-sg"
  description = "Security group for OpenVPN instance"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    }

   egress {
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
   }

   tags = {
    Owner = "Ortiz"
    Environment = var.environment
    Terraform = "true"
   }
}