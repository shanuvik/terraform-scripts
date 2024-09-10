provider "aws"  {
	region = "us-west-1"
	
	}


#

resource "aws_vpc" "dev-vpc" {

	cidr_block = var.vpc_cidr_block[0]
	tags = {
	Name = "dev"
	}
}
#

resource "aws_vpc" "prod-vpc" {

        cidr_block = var.vpc_cidr_block[1]
        tags = {
        Name = "dev"
        }
}

resource "aws_subnet" "dev-subnet-1" {
	vpc_id = aws_vpc.dev-vpc.id
	cidr_block = var.subnet_cidr_block[0]
	tags = {
	Name = "dev"
	}
}




resource "aws_subnet" "dev-subnet-2" {
        vpc_id = aws_vpc.dev-vpc.id
        cidr_block = var.subnet_cidr_block[1]
        tags = {
        Name = "dev"
        }
}

resource "aws_subnet" "dev-subnet-3" {
        vpc_id = aws_vpc.dev-vpc.id
        cidr_block = var.subnet_cidr_block[2]
        tags = {
        Name = "dev"
        }
}

output "vpcIdOutput" {

value = aws_vpc.dev-vpc.id
}
