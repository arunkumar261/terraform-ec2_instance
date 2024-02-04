variable "project_name" {
  
}

variable "environment" {
  
}

# variable "ec2_name" {
#   default = "mongodb"
# }
variable "instance_type" {
#   default = "t2.micro"
}

variable "common_tags" {
  default = {}
  type = map
}
variable "ec2_tags" {
 default = {} 
}

variable "vpc_security_group_ids" {
  
}

variable "subnet_id" {
  
}