resource "azurerm_public_ip" "nat-pub-ip" {
  name                = "nat_pub_ip"
  resource_group_name = azurerm_resource_group.capstone-project.name
  location            = azurerm_resource_group.capstone-project.location
  allocation_method   = "Static"

  tags = {
    environment = "Production"
  }
}
