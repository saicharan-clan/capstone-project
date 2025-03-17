resource "azurerm_network_security_group" "nsg" {
  name                = "nsg"
  location            = azurerm_resource_group.capstone-project.location
  resource_group_name = azurerm_resource_group.capstone-project.name

  security_rule {
    name                       = "nsg-rule1"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
  }

  security_rule {
    name                       = "nsg-rule2"
    priority                   = 110
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "80"
  }

  security_rule {
    name                       = "nsg-rule"
    priority                   = 100
    direction                  = "Outbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
  }

  tags = {
    environment = "Production"
}
}
