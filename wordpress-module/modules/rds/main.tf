resource "aws_db_instance" "wordpress_db_instance" {
    allocated_storage    = 20
    storage_type         = "gp3"
    engine               = "mysql"
    engine_version       = "8.4.4"
    instance_class       = "db.t2.micro"
    identifier           = "${var.cliente}-${var.environment}-wordpress-db"
    username             = "admin"
    password             = "" #colocar a senha no secrets manager
    parameter_group_name = "default.mysql5.7"
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