resource "aws_ssm_parameter" "vpc_id" {
  name  = "/${var.project_name}/${var.environment}/vpc_id"
  type  = "String" # type = String is AWS notation and S should be capital
  value = module.vpc.vpc_id
}

resource "aws_ssm_parameter" "public_subnet_ids" {
  name  = "/${var.project_name}/${var.environment}/public_subnet_ids"
  type  = "StringList" # type = String is AWS notation and S should be capital
  value = join(",",module.vpc.public_subnet_ids) #Converting list to StringList

}

#["id1","id2"]=list --> this is terraform format
#id1,id2 =StringList-->AWS SSM format
resource "aws_ssm_parameter" "private_subnet_ids" {
  name  = "/${var.project_name}/${var.environment}/private_subnet_ids"
  type  = "StringList" # type = String is AWS notation and S should be capital
  value = join(",",module.vpc.private_subnet_ids) #Converting list to StringList
}

resource "aws_ssm_parameter" "db_subnet_group_name" {
  name  = "/${var.project_name}/${var.environment}/db_subnet_group_name"
  type  = "String" # type = String is AWS notation and S should be capital
  value = module.vpc.database_subnet_group_name
}

