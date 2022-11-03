#Secutity group for public bastion host

module "private_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.9.0"
  
  name = "private-sg"
  description = "Security Group with HTTP & SSH port open for entire VPC Block (IPv4 CIDR), egress ports are all world open"
  vpc_id = module.vpc.vpc_id

 # Ingress rules and CIDR block

ingress_rules       = ["ssh-tcp", "http-80-tcp"]
ingress_cidr_blocks = [module.vpc.vpc_cidr_block]

# Egress rules (all-all open)
egress_rules       = ["all-all"]
tags = local.common_tags

}