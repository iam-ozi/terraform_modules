resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = var.vpc_name
  }

}

resource "aws_subnet" "public" {
    count = length(var.public_subnets)
    vpc_id = aws_vpc.main.id
    cidr_block = element(var.public_subnets, count.index)

    tags = {
      Name = "${var.vpc_name}-public-${count.index + 1}"
    }
  
}