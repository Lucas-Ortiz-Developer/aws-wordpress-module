resource "aws_s3_bucket" "alb_access_logs" {
  bucket = var.bucket_name
  acl    = "private"

  tags = {
    Owner       = "ortiz"
    Environment = var.environment
    Terraform   = "true"
  }

}