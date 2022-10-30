#input variables
#aws region
variable "aws_region" {
 description = "region for the aws resources created"
 type = string
 default = "us-east-1"
}

#Environment Variable
variable "environment" {
    description = "Environment variable used as a prefix"
    type = string
    default = "dev"
  
}

#Business Division
variable "business_division" {
    description = "Business devision in the organization"
    type = string
    default = "SAP"
}