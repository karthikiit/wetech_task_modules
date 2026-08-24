variable "module_ec2_ebs_instance_ami_id" {}
variable "module_ec2_ebs_instance_instance_type" {}
variable "module_ec2_ebs_instance_key_pair_name" {}
variable "module_ec2_ebs_instance_security_group_name" {}
variable "module_ec2_ebs_instance_tag_name" {} 

variable "module_ec2_ebs_devicee_name" {}
variable "module_ec2_ebs_volume_type" {}
variable "module_ec2_ebs_volume_size" {}
variable "module_ec2_ebs_volume_iops" {}
variable "module_ec2_ebs_volume_throughput" {}
variable "module_ec2_ebs_volume_availability_zone" {}
variable "module_ec2_ebs_volume_tag_name" {}

variable "security_group_cidr_block" {
    default = ["0.0.0.0/0"]
}
