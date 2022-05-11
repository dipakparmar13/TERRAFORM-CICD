terraform {
  required_version = ">= 0.12"
  # backend "s3" {
  #   bucket = "my-terraform-backup-sa"
  #   key    = "production/terraform.tfstate"
  #   region = "us-east-1"
  # }
}

provider "aws" {
  region = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  
}

module "vpc" {
  source = "./module/vpc"
  vpc_cidr = var.vpc_cidr
  subnetA_cidr = var.subnetA_cidr
  env = var.env
}

module "ec2" {
  source = "./module/ec2"
  public_key_path = var.public_key_path
  key_name = var.key_name
  env = var.env
  ami = var.aws_amis[var.aws_region]
  vpc_security_group_id = module.vpc.vpc_security_group_id
  vpc_subnet_id = module.vpc.vpc_subnet_id

  # depends_on = [
  #   module.vpc
  # ]
}
