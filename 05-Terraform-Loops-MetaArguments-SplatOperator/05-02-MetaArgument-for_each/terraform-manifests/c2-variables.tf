#input variables
#AWS Region
variable "aws_region" {
    description = "Region in which Aws Resource will created"
    type = string
    default = "us-east-1"
  
}
# AWS EC2 Instance Type
variable "instance_type" {
    description = "Ec2 Instance Type"
    type = string
    default = "t3.micro"

}
#AWS EC2 Instance Key Pair
variable "instance_keypair" {
    description = "AWS EC2 key pair thats need to be associated with EC2 Instance"
    type = string
    default = "Terraform-key"
  
}
#AWS EC2 Instance type-List
variable "instance_type_list" {
    description = "EC2 Instance Type"
    type = list(string)
    default = ["t3.micro","t3.small","t3.large"]  
}
#AWS EC2 Instance type-Map
variable "instance_type_map" {
    description = "EC2 Instance Type"
    type = map(string)
    default = {
        "dev" = "t3.micro"
        "qa"  = "t3.small"
        "prod" = "t3.large"
    }
     
}

