resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.myvpc.id
  tags = {
    Name = var.ig-name
  }
}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.pub-sub-1.id
  tags = {
    Name = "nat-gateway"
  }
}

resource "aws_eip" "nat" {
  domain = "vpc"
}

resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.myvpc.id
  tags = {
    Name = var.pub-rt-name
  }
}

resource "aws_route" "public_route" {
  route_table_id         = aws_route_table.public_rt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.igw.id
}

resource "aws_route_table_association" "pub_subnet1_association" {
  subnet_id      = aws_subnet.pub-sub-1.id
  route_table_id = aws_route_table.public_rt.id
}

resource "aws_route_table_association" "pub_subnet2_association" {
  subnet_id      = aws_subnet.pub-sub-2.id
  route_table_id = aws_route_table.public_rt.id
}

resource "aws_route_table" "private_rt" {
  vpc_id = aws_vpc.myvpc.id
  tags = {
    Name = "private-route-table"
  }
}

resource "aws_route" "private_route" {
  route_table_id         = aws_route_table.private_rt.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.nat.id
}

resource "aws_route_table_association" "pri_subnet1_association" {
  subnet_id      = aws_subnet.pri-sub-1.id
  route_table_id = aws_route_table.private_rt.id
}

resource "aws_route_table_association" "pri_subnet2_association" {
  subnet_id      = aws_subnet.pri-sub-2.id
  route_table_id = aws_route_table.private_rt.id
}

