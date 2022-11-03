# AWS EC2 Instance Terraform Outputs

# Public EC2 Instances - Bastion Host

## ec2_bastion_public_instance_ids
output "ec2_bastion_public_instance_ids" {
  description = "List of IDs of instances"
  value       = aws_instance.ec2_public[*].id
}

## ec2_bastion_public_ip
output "ec2_bastion_public_ip" {
  description = "List of public IP addresses assigned to the instances"
  value       = aws_eip.bastion_eip.public_ip
}

# Private EC2 Instances

## ec2_private_instance_ids
output "ec2_private_instance_ids" {
  description = "List of IDs of instances"
  value       = aws_instance.test-PrivateVM[*].id
}

## ec2_private_ip
output "ec2_private_ip" {
  description = "List of public IP addresses assigned to the instances"
  value       = aws_instance.test-PrivateVM[*].private_ip
}
