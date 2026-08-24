resource "aws_instance" "task_22082026_prod_instance" {
    ami = var.module_ec2_ebs_instance_ami_id
    instance_type = var.module_ec2_ebs_instance_instance_type
    key_name = var.module_ec2_ebs_instance_key_pair_name
    security_groups = [var.module_ec2_ebs_instance_security_group_name]
    tags = {
        Name = var.module_ec2_ebs_instance_tag_name
    }

    ebs_block_device {
        device_name = var.module_ec2_ebs_devicee_name
        volume_type = var.module_ec2_ebs_volume_type
        volume_size = var.module_ec2_ebs_volume_size
        iops = var.module_ec2_ebs_volume_iops
        throughput = var.module_ec2_ebs_volume_throughput
        tags = {
          Name = var.module_ec2_ebs_volume_tag_name
        }
    }
}
