variable "project_name" {
  default = "expense"
}

variable "environment" {
  default = "dev"
}

# variable "sg_name" {
#   default = ""
# }

variable "db_sg_description" {
    default = "SG for DB MySQL instances"
  
}

variable "common_tags" {
  default = {
    Project = "expense"
    Environment = "dev"
    Terraform = true
  }
}

variable "vpn_sg_rules" {
  default = [
    {
        from_port = 943
        to_port = 943
        protocol = "tcp" # all protocols
        cidr_blocks = ["0.0.0.0/0"]
    },
    {
        from_port = 443
        to_port = 443
        protocol = "tcp" # all protocols
        cidr_blocks = ["0.0.0.0/0"]
    },
    {
        from_port = 22
        to_port = 22
        protocol = "tcp" # all protocols
        cidr_blocks = ["0.0.0.0/0"]
    },
    {
        from_port = 1194
        to_port = 1194
        protocol = "udp" # all protocols
        cidr_blocks = ["0.0.0.0/0"]
    },
  ]
}

# variable "sg_tags" {
#     default = {}
# }


