########################
# EC2 instance OPENVPN #
########################
resource "aws_instance" "openvpn_instance" {
    instance_type = "t2.micro"
    ami = var.ami_id
    key_name = var.key_pair
    subnet_id = var.public_subnet_id
    security_groups = [aws_security_group.openvpn_sg.id]
    associate_public_ip_address = true

    tags = {
      Name = "${var.cliente}-${var.environment}-openvpn-instance"
      Owner = "Ortiz"
      Environment = var.environment
      Terraform = "true"
    }
  
}

##########################
# EC2 instance WORDPRESS #
##########################
resource "aws_instance" "wordpress_instance" {
    instance_type = "t2.micro"
    ami = var.ami_id
    key_name = var.key_pair
    subnet_id = var.public_subnet_id
    security_groups = [aws_security_group.wordpress_sg.id]
    associate_public_ip_address = true

    tags = {
      Name = "${var.cliente}-${var.environment}-wordpress-instance"
      Owner = "Ortiz"
      Environment = var.environment
      Terraform = "true"
    }
  
}