

# resource "aws_instance" "mongodb" {
#   ami           = data.aws_ami.dynamic_ami_id.id
#   instance_type = var.instance_type

#   tags = merge(
#     var.common_tags,
#     var.ec2_tags,
#     {
#     Name ="${var.project_name}-${var.environment}-${var.ec2_instance_name}"
#   }
#   )
# }


resource "aws_instance" "mongodb" {
  ami           = data.aws_ami.dynamic_ami_id.id
  instance_type = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids
  subnet_id = var.subnet_id
 
    tags  = merge(
    var.common_tags,
    {
        Component = "mongodb"
    },
    {
        Name = "${var.project_name}-${var.environment}-mongodb"
    }
  )
}

