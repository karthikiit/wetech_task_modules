resource "aws_instance" "task_22082026_dev_instance" {
    ami = var.module_ec2_instance_ami_id
    instance_type = var.module_ec2_instance_instance_type
    key_name = var.module_ec2_instance_key_pair_name
    security_groups = [var.module_ec2_instance_security_group_name]
    tags = {
        Name = var.module_ec2_instance_tag_name
    }
}
