#Private EC2 App instance

resource "aws_instance" "test-PrivateVM" {
  depends_on = [module.vpc]
  ami           = data.aws_ami.amzlinux2.id
  instance_type = var.instance_type
  key_name               = var.instance_keypair
  count = var.private_instance_count
  subnet_id              = module.vpc.private_subnets[count.index]
  vpc_security_group_ids = [module.private_sg.security_group_id]
  user_data = file("${path.module}/app1-install.sh")
  tags = local.common_tags
}

/*module "ec2_private" {
  depends_on = [module.vpc]
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "4.1.2"
  name = "${var.environment}-PrivateVM"
  ami                    = data.aws_ami.amzlinux2.id
  instance_type          = var.instance_type
  instance_count = var.private_instance_count
  key_name               = var.instance_keypair
  #monitoring             = true
  subnet_id              = [
    module.vpc.private_subnets[0],
    module.vpc.private_subnets[1]
  ]
 
  vpc_security_group_ids = [module.private_sg.security_group_id]
  user_data = file("${path.module}/app1-install.sh")
  tags = local.common_tags
}
*/