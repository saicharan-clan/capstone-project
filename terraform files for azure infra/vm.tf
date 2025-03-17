# App Machine

resource "azurerm_virtual_machine" "App-Machine" {
  name                  = "App_Machine"
  location              = azurerm_resource_group.capstone-project.location
  resource_group_name   = azurerm_resource_group.capstone-project.name
  vm_size               = "Standard B4ms"
  subnet_id             = azurerm_subnet.public-subnet.id
  network_interface_ids = [azurerm_network_interface.network-interface.id]
  
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    create_option     = "FromImage"
    managed           = true
    os_type           = "Linux"
  }

  source_image_reference {
    id        = "Ubuntu Server 24.04 LTS - x64 Gen2"
    publisher = "Canonical"
    offer     = "ubuntu-24_04-lts"
    sku       = "22_04-lts"
    version   = "latest"
  }
}

  admin_ssh_key {
    username   = "azureuser"
    public_key = file("/home/sreemusiri/.ssh/id_rsa.pub")
  }

tags = {
    environment = "App Machine"
  }
}


# Tools Machine

resource "azurerm_virtual_machine" "Tools-Machine" {
  name                  = "Tools_Machine"
  location              = azurerm_resource_group.capstone-project.location
  resource_group_name   = azurerm_resource_group.capstone-project.name
  vm_size               = "Standard B4ms"
  subnet_id             = azurerm_subnet.public-subnet.id
  network_interface_ids = [azurerm_network_interface.network-interface.id]
  
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    create_option     = "FromImage"
    managed           = true
    os_type           = "Linux"
  }

  source_image_reference {
    id        = "Ubuntu Server 24.04 LTS - x64 Gen2"
    publisher = "Canonical"
    offer     = "ubuntu-24_04-lts"
    sku       = "22_04-lts"
    version   = "latest"
  }
}

  admin_ssh_key {
    username   = "azureuser"
    public_key = file("/home/sreemusiri/.ssh/id_rsa.pub")
  }

tags = {
    environment = "Tools Machine"
  }
}
