resource "aws_subnet" "pub-sub-1" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = var.pub-subnet1-cidr
  availability_zone       = var.subnet1-az
  map_public_ip_on_launch = true
  tags = {
    Name = "public-subnet-1"
  }
}

resource "aws_subnet" "pub-sub-2" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = var.pub-subnet2-cidr
  availability_zone       = var.subnet2-az
  map_public_ip_on_launch = true
  tags = {
    Name = "public-subnet-2"
  }
}

resource "aws_subnet" "pri-sub-1" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = var.pri-subnet1-cidr
  availability_zone = var.subnet1-az
  tags = {
    Name = "private-subnet-1"
  }
}

resource "aws_subnet" "pri-sub-2" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = var.pri-subnet2-cidr
  availability_zone = var.subnet2-az
  tags = {
    Name = "private-subnet-2"
  }
}

