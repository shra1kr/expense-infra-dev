data "aws_ssm_parameter" "backend_sg_id" {
  name = "/${var.project_name}/${var.environment}/backend_sg_id"
}

data "aws_ssm_parameter" "public_subnet_ids" {
  name = "/${var.project_name}/${var.environment}/public_subnet_ids"
}

data "aws_ssm_parameter" "private_subnet_ids" {
  name = "/${var.project_name}/${var.environment}/private_subnet_ids"
}

data "aws_ssm_parameter" "vpc_id" {
  name = "/${var.project_name}/${var.environment}/vpc_id"
}

data "aws_ssm_parameter" "app_alb_listener_arn" {
  name = "/${var.project_name}/${var.environment}/app_alb_listener_arn"
}

data "aws_ami" "ami_info" {

    most_recent = true
    owners = ["679593333241"]

    filter {
        name = "name"
        values = ["OpenVPN Access Server Community Image-fe8020db-*"] # here * means,acccept anything after -
    }

    filter {
        name = "root-device-type"
        values = ["ebs"]
    }

    filter {
        name = "virtualization-type"
        values = ["hvm"]
    }
    # filter {
    #     name = "Product codes"
    #     values = ["marketplace:f2ew2wrz425a1jagnifd02u5t"]
    # }
      
}