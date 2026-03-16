resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "dev-vpc"
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "public-subnet"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id
}
