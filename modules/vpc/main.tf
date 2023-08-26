module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.1.1"

  name               = var.name
  cidr               = var.cidr
  azs                = var.azs
  public_subnets     = var.public_subnets
  private_subnets    = var.private_subnets
  enable_nat_gateway = var.enable_nat_gateway
  single_nat_gateway = var.enable_nat_gateway
  create_igw         = var.create_igw
}
