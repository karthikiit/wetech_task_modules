resource "aws_security_group" "task_22082026_sg_prod" {
    name = "task_22082026_sg_prod"
    description = "Allow SSH HTTP ICMP"
    vpc_id = "vpc-0ced9140ebdafed20"

    ingress {
        description = "ssh"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = var.security_group_cidr_block
    }

    ingress {
        description = "http"
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = var.security_group_cidr_block
    }

    ingress {
        description = "icmp-ipv6"
        from_port = -1
        to_port = -1
        protocol = "58"
        cidr_blocks = var.security_group_cidr_block
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = var.security_group_cidr_block
    }

    tags = {
        Name = var.module_ec2_ebs_instance_security_group_name
    }
}
