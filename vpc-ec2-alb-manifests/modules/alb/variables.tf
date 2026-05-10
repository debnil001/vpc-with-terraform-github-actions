variable "sg_id" {
  description = "SG ID for application load balancer"
  type = string
}

variable "subnet_ids" {
  description = "Subnet IDs for ALB"
  type = list(string)
}

variable "vpc_id" {
    description = "VPC ID"
    type = string
  
}

variable "instances" {
    description = "Instance ID for target group attachment"
    type = list(string)
  
}