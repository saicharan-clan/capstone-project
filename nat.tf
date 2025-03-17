resource "aws_nat_gateway" "NAT" {
  allocation_id = aws_eip.eip.id
  subnet_id     = aws_subnet.public-subnet.id

  tags = {
    Name = "NAT"
  }
}
