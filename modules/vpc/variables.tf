variable "name" {
  type    = string
  default = "uc-18-vpc"
}

variable "cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "enable_nat_gateway" {
  type = bool
}

variable "create_igw" {
  type = bool
}

variable "azs" {
  type = list(string)
  default = ["us-east-1a"]
}

variable "public_subnets" {
  type = list(string)
  default = ["10.0.1.0/24"]
}

variable "private_subnets" {
  type = list(string)
  default = [ "10.0.101.0/24"]
}

variable "tags" {
  type    = map(string)
  default = {
    Terraform : "true",
    Description : "Use-case-18"
  }
}
