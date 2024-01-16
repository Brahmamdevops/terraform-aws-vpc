variable "vpc_cidr" {
  type = string
  default = "10.0.0.0/16" # user can override
}

variable "enable_dns_hostnames" {
   type = bool
   default = true
}  


#### tags ####

variable "common_tags" {
  type = map
   default = {} # optional
}

variable "vpc_tags" {
  type = map
}

variable "project_name" {
  type = string
}

variable "environment" {
  type = string
}

variable "igw_tags" {
  type = map
  default = {}
}



#### public-subnet ####

variable "public_subnets_cidr" {
  type = list
    validation {
    condition     = length(var.public_subnets_cidr)  == 2
    error_message = "please give 2 publuc valid subnet CIDR"
  }
}

variable "public_subnets_tags" {
  type = map
  default = {}
}


##### private-subnet #####

variable "private_subnets_cidr" {
  type = list
  validation {
    condition = length(var.private_subnets_cidr) == 2
    error_message = "please give 2 private valid CIDR"
  }
}

variable "private_subnets_tags" {
  type = map
  default = {}
}


##### database-subnet #####


variable "database_subnets_cidr" {
  type = list
  validation {
    condition = length(var.database_subnets_cidr) == 2
    error_message = "please give 2 database valid CIDR"
  }
}

variable "database_subnets_tags" {
  type = map
  default = {}
}

variable "nat_gateway_tags" {
  type = map
  default = {}
}


variable "public_route_table_tags" {
  type = map
  default = {}
}

variable "private_route_table_tags" {
  type = map
  default = {}
}

variable "database_route_table_tags" {
  type = map
  default = {}
}

variable "is_peering_required" {
  type = bool
  default = false
}

variable "acceptor_vpc_id" {
  type = string
  default = ""
}

variable "vpc_peering_tags" {
  default = {}
}