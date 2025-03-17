resource "azurerm_route_table" "public_route_table" {
  name                = "public-route-table"
  location            = azurerm_resource_group.capstone-project.location
  resource_group_name = azurerm_resource_group.capstone-project.name

  route {
    name           = "public_route"
    address_prefix = "0.0.0.0/0"
    next_hop_type  = "Internet"
  }

  tags = {
    environment = "Production"
  }
}

resource "azurerm_route_table" "private_route_table" {
  name                = "private-route-table"
  location            = azurerm_resource_group.capstone-project.location
  resource_group_name = azurerm_resource_group.capstone-project.name

  route {
    name           = "private_route"
    address_prefix = "0.0.0.0/0"
    next_hop_type  = "Internet"
  }

  tags = {
    environment = "Production"
  }
}
