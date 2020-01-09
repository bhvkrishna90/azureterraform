resource "azurerm_virtual_machine" "virtualMachine" {
  count                 = "${var.compcount}"
  name                  = "${var.prefix}-${var.projCode}-${var.svcName}${count.index}"
  location              = "${var.location}"
  resource_group_name   = "${var.rg_name}"
  network_interface_ids = ["${element(azurerm_network_interface.vmnic.*.id, count.index)}"]
  
  vm_size               = "${var.vmSize}"
  # Uncomment this line to delete the OS disk automatically when deleting the VM
  #delete_os_disk_on_termination = true
  # Uncomment this line to delete the data disks automatically when deleting the VM
  # delete_data_disks_on_termination = true

  tags = "${var.tags}"

  storage_image_reference {
    publisher = "${var.ospublisher}"
    offer     = "${var.osoffer}"
    sku       = "${var.ossku}"
    version   = "${var.osversion}"
  }
  storage_os_disk {
    name              = "${var.prefix}-${var.projCode}-${var.svcName}${count.index}-osdisk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "${var.mngdisktype}"
  }
  os_profile {
    computer_name  = "${var.prefix}-${var.projCode}-${var.svcName}${count.index}"
    admin_username = "${var.adminuser}"
    admin_password = "${var.adminpassword}"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
}