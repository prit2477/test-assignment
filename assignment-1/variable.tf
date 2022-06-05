variable "cidr_block" {
    type        = string
    default = "10.0.0.0/16"
}


variable "vpc_name" {
    type    = string
    default = "Three-tier"

}
variable "azs" {
	type = "list"
	default = ["us-east-1a", "us-east-1b"]
}

variable "public_subnet_cidrs" {
  type    = list
  default = ["10.0.1.0/28", "10.0.2.0/28"]
}

variable "web_subnet_cidrs" {
  type    = list
  default = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "app_subnet_cidrs" {
  type    = list
  default = ["10.0.5.0/24", "10.0.6.0/24"]
}

variable "data_subnet_cidrs" {
  type    = list
  default = ["10.0.7.0/24", "10.0.8.0/24"]
}


variable "database_name" {

}
variable "database_password" {

}
variable "database_user" {

}


variable "webservers_ami" {
  default = "ami-xxx"
}
variable "instance_type" {
  default = "t2.nano"
}
