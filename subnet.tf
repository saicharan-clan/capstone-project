#public subnet
resource "aws_subnet" "public-subnet" {
  vpc_id     = aws_vpc.capstone.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "public-subnet"
  }
}

#private subnet
resource "aws_subnet" "private-subnet" {
  vpc_id     = aws_vpc.capstone.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "private-subnet"
  }
}

