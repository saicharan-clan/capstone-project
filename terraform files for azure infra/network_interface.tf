# NIC for app-machine
resource "azurerm_network_interface" "app-machine-nic" {
  name                = "app-machine-nic"
  location            = azurerm_resource_group.capstone-project.location
  resource_group_name = azurerm_resource_group.capstone-project.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.public-subnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.app-machine-ip.id 
  }
}

# NIC for tools-machine
resource "azurerm_network_interface" "tools-machine-nic" {
  name                = "tools-machine-nic"
  location            = azurerm_resource_group.capstone-project.location
  resource_group_name = azurerm_resource_group.capstone-project.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.public-subnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.tools-machine-ip.id 
  }
}
