resource "azurerm_virtual_network" "capstone-vnet" {
  name                = "capstone_vnet"
  location            = azurerm_resource_group.capstone-project.location
  resource_group_name = azurerm_resource_group.capstone-project.name
  address_space       = ["10.0.0.0/16"]

  tags = {
    environment = "Production"
  }
}
