#App Machine

resource "azurerm_linux_virtual_machine" "app-machine" {
  name                  = "app-machine"
  location              = azurerm_resource_group.capstone-project.location
  resource_group_name   = azurerm_resource_group.capstone-project.name
  size               = "Standard_B4ms"
  admin_username = "azureuser"
  network_interface_ids = [azurerm_network_interface.network-interface.id]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "24_04-lts"
    version   = "latest"
  }

  admin_ssh_key {
    username   = "azureuser"
    public_key = file("/home/sreemusiri/.ssh/id_rsa.pub")
  }

tags = {
    environment = "staging"
  }
}

# Tools Machine

resource "azurerm_linux_virtual_machine" "tools-machine" {
  name                  = "tools-machine"
  location              = azurerm_resource_group.capstone-project.location
  resource_group_name   = azurerm_resource_group.capstone-project.name
  size               = "Standard_B4ms"
  admin_username        = "azureuser"
  network_interface_ids = [azurerm_network_interface.network-interface.id]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "24_04-lts"
    version   = "latest"
  }

  admin_ssh_key {
    username   = "azureuser"
    public_key = file("/home/sreemusiri/.ssh/id_rsa.pub")
  }
tags = {
    environment = "staging"
  }
}
