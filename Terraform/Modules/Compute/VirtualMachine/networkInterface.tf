resource "azurerm_network_interface" "vmnic" {
  count               = "${var.compcount}"
  name                = "${var.prefix}-${var.projCode}-${var.svcName}-nic${count.index}"
  location            = "${var.location}"
  resource_group_name = "${var.rg_name}"
  network_security_group_id = "${var.nsgId}"
  tags = "${var.tags}"

  ip_configuration {
    name                          = "${var.prefix}-${var.projCode}-${var.svcName}-ip${count.index}"
    subnet_id                     = "${var.subNetId}"
    private_ip_address_allocation = "${var.priipAllocMethod}"
    public_ip_address_id          = "${element(azurerm_public_ip.svcpip.*.id, count.index)}"
  }
  
}