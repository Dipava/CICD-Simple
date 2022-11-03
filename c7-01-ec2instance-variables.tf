# AWS EC2 Instance Terraform Variables
# EC2 Instance Variables

# AWS EC2 Instance Type

variable "instance_type" {
    description = "EC2 Instance Type"
    type = string
    default = "t2.micro"  
}

# AWS EC2 Instance Key Pair

variable "instance_keypair" {
    description = "AWS EC2 Keypair for SSH Connection to Private and Bastion Instances"
    type = string
    default = "terraform-key-pem"
  
}

# AWS EC2 Private Instance Count

variable "private_instance_count" {
    description = "Private EC2 Instance Count"
    type = number
    default = 1

}