variable "sg_id" {
    description = "SG ID"
    type = string 
}

variable "subnet_ids" {
    description = "subnet IDs"
    type = list(string)
  
}

variable "ec2_names" {
    description = "EC2 Names"
    type = list(string)
    default = [ "instance1","instance2" ]
  
}