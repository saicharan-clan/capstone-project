# Associate NSG with app-machine NIC
resource "azurerm_network_interface_security_group_association" "app-machine-nsg-association" {
  network_interface_id      = azurerm_network_interface.app-machine-nic.id
  network_security_group_id = azurerm_network_security_group.nsg.id
}

# Associate NSG with tools-machine NIC
resource "azurerm_network_interface_security_group_association" "tools-machine-nsg-association" {
  network_interface_id      = azurerm_network_interface.tools-machine-nic.id
  network_security_group_id = azurerm_network_security_group.nsg.id
}
