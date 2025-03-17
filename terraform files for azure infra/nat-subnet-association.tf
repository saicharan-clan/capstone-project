resource "azurerm_subnet_nat_gateway_association" "nat-subnet-association" {
  subnet_id      = azurerm_subnet.private-subnet.id
  nat_gateway_id = azurerm_nat_gateway.nat_gateway.id
}
