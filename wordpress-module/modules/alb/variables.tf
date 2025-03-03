variable "cliente" {
  description = "The name of the client"
  type        = string
  default     = "ortiz"

}

variable "environment" {
  description = "The environment to deploy the instance"
  type        = string
  default     = "dev"

}

variable "vpc_id" {
  description = "The VPC ID to use for the instance"
  type        = string
  default     = "vpc-02446ef2e7c8b0bcc"

}

variable "bucket_name" {
  description = "The name of the bucket to store the logs"
  type        = string
  default     = "ortiz-alb-logs-wp"

}

variable "public_subnet_id" {
  description = "The public subnet ID to use for the instance"
  type        = string
  default     = "subnet-0a9747d6024db8530"

}