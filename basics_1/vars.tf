variable "AWS_ACCESS_KEY" {}

variable "AWS_SECRET_KEY" {}

variable "AWS_REGION" {
    default = "us-east-1"    
}

variable "AWS_INSTANCE_TYPE" {}

variable "INSTANCE_TYPE_MAP" {
    type = map
    default = {
        t2Micro = "t2.micro"
    }
}

variable "AWS_AMI_MAP" {
    type = map
    default = {
        us-east-1 = "ami-06b263d6ceff0b3dd"
    }
}