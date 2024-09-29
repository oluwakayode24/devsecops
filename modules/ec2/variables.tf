variable "aws_ami" {
    description         = "The ami id for ec2 instance"
    type                = string
}

variable "instance_type" {
    description         = "the type of the ec2 instance"
    type                = string
}

variable "availability_zone" {
    description         = "the availability zone where resources will be deployed"
    type                = string
}

variable "tags" {
    description         = "ec2 tags"
    type                = map
    default             = {}
}

variable "region" {
    description         = "aws region where the ec2 will be provisioned"
    type                = string
}