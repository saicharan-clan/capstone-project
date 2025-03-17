resource "aws_route_table_association" "pub-association" {
  subnet_id      = aws_subnet.public-subnet.id
  route_table_id = aws_route_table.public-route-table.id
}

resource "aws_route_table_association" "prv-association" {
  subnet_id      = aws_subnet.private-subnet.id
  route_table_id = aws_route_table.private-route-table.id
}

