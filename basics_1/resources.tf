resource "aws_instance" "example" {
    ami = lookup(var.AWS_AMI_MAP, var.AWS_REGION)
    instance_type = lookup(var.INSTANCE_TYPE_MAP, var.AWS_INSTANCE_TYPE)
    tags = {
        Name = "MyInstance"
    }
}