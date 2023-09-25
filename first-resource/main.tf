provider "aws" {
    region = "sa-east-1"
}

variable "inputname" {
    type = string
    description = "Input a name:"
}

resource "aws_vpc" "myvpc" {
    cidr_block = "10.0.0.0/16"
    tags = {
        name = var.inputname
    }
}

output "vpc_id" {
    value = aws_vpc.myvpc.id
}