resource "azurerm_nat_gateway" "nat_gateway" {
  name                    = "nat-gateway"
  location                = azurerm_resource_group.capstone-project.location
  resource_group_name     = azurerm_resource_group.capstone-project.name
  sku_name                = "Standard"
  idle_timeout_in_minutes = 10
}
