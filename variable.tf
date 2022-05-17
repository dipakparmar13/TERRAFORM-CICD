variable "aws_access_key" {
  type =  string
  default     = ""
}

variable "aws_secret_key" {
  type =  string
  default     = ""
}

variable "aws_region" {
  description = "AWS default region."
  type =  string
  default     = "us-east-1"
}

variable "env" {
    description = "Project environment "
    default = "dev"
}

variable "vpc_cidr" {
  description = "VPC CIDR"
  type = string
  default = "10.0.0.0/16"
}

variable "subnetA_cidr" {
  description = "VPC Subnet A  CIDR"
  type = string
  default = "10.0.1.0/24"
}
   
variable "public_key_path" {
  description = "SSh public key path"
  default = "/var/lib/jenkins/.ssh/id_rsa.pub"
}

variable "key_name" {
  description = "Desired name of AWS key pair"
  type = string
  default = "id_rsa"
}

variable "aws_amis" {
  default = {
    us-east-1 = "ami-0022f774911c1d690"
  }
}
