resource "azurerm_linux_virtual_machine" "default" {
  name                            = var.name
  location                        = var.location
  resource_group_name             = var.resource_group_name
  size                            = var.size
  computer_name                   = var.computer_name
  admin_username                  = var.bastion_username
  disable_password_authentication = var.disable_password_authentication
  network_interface_ids = [
    var.bastion_network_interface_id
  ]

  admin_ssh_key {
    username       = var.bastion_username
    public_key     = var.public_key
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = var.source_image_offer
    sku       = var.source_image_sku
    version   = "latest"
  }

  # provisioner "remote-exec" {
  #   connection {
  #     host     = self.public_ip_address
  #     type     = "ssh"
  #     user     = var.bastion_username
  #     password = var.bastion_password
  #   }

  #   inline = [
  #     "sudo apt-get update && sudo apt-get install -y apt-transport-https gnupg2",
  #     "curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -",
  #     "echo 'deb https://apt.kubernetes.io/ kubernetes-xenial main' | sudo tee -a /etc/apt/sources.list.d/kubernetes.list",
  #     "sudo apt-get update",
  #     "sudo apt-get install -y kubectl",
  #     "curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash"
  #   ]
  # }
}
