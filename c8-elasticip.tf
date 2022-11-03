#Elastic IP for Bastion Host

resource "aws_eip" "bastion_eip" {
  depends_on = [aws_instance.ec2_public, module.vpc]
  instance = aws_instance.ec2_public.id
  vpc      = true
  tags = local.common_tags
}

## Local Exec Provisioner:  local-exec provisioner (Destroy-Time Provisioner - Triggered during deletion of Resource)

/*  provisioner "local-exec" {
    command = "echo Destroy Time prov `date` >> destroy-time-prov.txt"
    working_dir = "local-exec-output-files/"
    #on_failure = continue
    when = destroy
  }

*/