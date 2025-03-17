resource "azurerm_nat_gateway_public_ip_association" "nat-pub-ip-association" {
  nat_gateway_id       = azurerm_nat_gateway.nat_gateway.id
  public_ip_address_id = azurerm_public_ip.nat-pub-ip.id
}
