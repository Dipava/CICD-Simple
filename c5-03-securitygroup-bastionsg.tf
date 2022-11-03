#Secutity group for public bastion host

module "public_bastion_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.9.0"
  
  name = "public-bastion-sg"
  description = "Security Group with SSH port open for everybody (IPv4 CIDR), egress ports are all world open"
  vpc_id = module.vpc.vpc_id

 # Ingress rules and CIDR block

ingress_rules       = ["ssh-tcp"]
ingress_cidr_blocks = ["0.0.0.0/0"]

# Egress rules (all-all open)
egress_rules       = ["all-all"]
tags = local.common_tags

}