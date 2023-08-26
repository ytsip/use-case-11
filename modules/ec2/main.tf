module "ec2_instance" {
  source = "terraform-aws-modules/ec2-instance/aws"
  version = "5.3.1"

  name          = var.name
  instance_type = var.type
  subnet_id     = var.subnet_id
  tags          = var.tags
}
