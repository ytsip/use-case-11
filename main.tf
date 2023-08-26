module "vpc" {
  source = "./modules/vpc"

  create_igw         = true
  enable_nat_gateway = true
  tags               = var.tags
}

module "ec2" {
  source = "./modules/ec2"

  for_each  = var.instances
  name      = each.key
  subnet_id = each.value ? module.vpc.public_subnets[0] : module.vpc.private_subnets[0]
  tags      = var.tags
}
