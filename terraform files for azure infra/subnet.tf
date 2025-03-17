resource "azurerm_subnet" "public-subnet" {
  name                 = "public_subnet"
  resource_group_name  = azurerm_resource_group.capstone-project.name
  virtual_network_name = azurerm_virtual_network.capstone-vnet.name
  address_prefixes     = ["10.0.1.0/24"]

}


resource "azurerm_subnet" "private-subnet" {
  name                 = "private_subnet"
  resource_group_name  = azurerm_resource_group.capstone-project.name
  virtual_network_name = azurerm_virtual_network.capstone-vnet.name
  address_prefixes     = ["10.0.2.0/24"]

}
