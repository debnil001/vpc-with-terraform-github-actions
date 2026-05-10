data "aws_ami" "amazon_ami" {
    most_recent = true
  

    filter {
      name = "name"
      values = [ "amzn2-ami-hvm-*-x86_64-ebs" ]
    }

    filter {
      name = "virtualization-type"
      values = [ "hvm" ]
    }

    owners = [ "amazon" ]
}

data "aws_availability_zones" "available_zones" {
    state = "available"
}