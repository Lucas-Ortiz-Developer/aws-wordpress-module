variable "cliente" {
    description = "The name of the client"
    type = string
    default = "ortiz"
  
}

variable "environment" {
    description = "The environment to deploy the instance"
    type = string
    default = "dev"
  
}

variable "ami_id" {
    description = "The AMI ID to use for the instance"
    type = string
    default = "ami-04b4f1a9cf54c11d0"
  
}

variable "key_pair" {
    description = "The key pair to use for the instance"
    type = string
    default = "ortiz-ec2-key-labs"
  
}

variable "vpc_id" {
    description = "The VPC ID to use for the instance"
    type = string
    default = "vpc-02446ef2e7c8b0bcc"
  
}

variable "public_subnet_id" {
    description = "The public subnet ID to use for the instance"
    type = string
    default = "subnet-0a9747d6024db8530"
  
}