resource "aws_db_instance" "wordpress_db_instance" {
    allocated_storage    = 20
    storage_type         = "gp3"
    engine               = "mysql"
    engine_version       = "8.4.4"
    instance_class       = "db.t2.micro"
    identifier           = "${var.cliente}-${var.environment}-wordpress-db"
    username             = "admin"
    password             = aws_kms_key.rds_key.key_id
    parameter_group_name = "default.mysql8.0"
    publicly_accessible  = false
    skip_final_snapshot  = true
    vpc_security_group_ids = [aws_security_group.rds_sg.id]
    db_subnet_group_name = aws_db_subnet_group.rds_subnet_group.name
    
    tags = {
        Owner       = "Ortiz"
        Environment = var.environment
        Terraform   = "true"
    }
    
  
}

resource "aws_kms_key" "rds_key" {
    description = "KMS key for RDS"
    enable_key_rotation     = true
    tags = {
        Name = "rds_key"
    }
  
}