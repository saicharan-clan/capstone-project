#public route table

resource "aws_route_table" "public-route-table" {
  vpc_id = aws_vpc.capstone.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "public-route-table"
  }
}

#private route table

resource "aws_route_table" "private-route-table" {
  vpc_id = aws_vpc.capstone.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.NAT.id
  }

  tags = {
    Name = "private-route-table"
  }
}

