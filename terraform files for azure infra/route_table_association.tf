resource "azurerm_subnet_route_table_association" "public-routetable-association" {
  subnet_id      = azurerm_subnet.public-subnet.id
  route_table_id = azurerm_route_table.public_route_table.id
}

resource "azurerm_subnet_route_table_association" "private-routetable-association" {
  subnet_id      = azurerm_subnet.private-subnet.id
  route_table_id = azurerm_route_table.private_route_table.id
}
