resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.capstone.id

  tags = {
    Name = "igw"
  }
}
