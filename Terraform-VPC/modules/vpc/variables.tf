variable "vpc_cidr" {
  description = "VPC CIDR Range"
  type = string
}
variable "subnet_cidr" {
  description = "Subnet CIDRs"
  type = list(string)
}

variable "subnet_names" {
  description = "subnet names"
  type = list(string)
  default = [ "public_subnet1","public_subnet2" ]
}