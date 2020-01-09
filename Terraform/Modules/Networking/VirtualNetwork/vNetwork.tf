#Deploy azure VNET with one Subnet
resource "azurerm_virtual_network" "projvnet" {
  name                = "${var.prefix}-${var.projCode}-vnet"
  address_space       = "${var.vNetAddrSpace}"
  location            = "${var.location}"
  resource_group_name = "${var.rg_name}"
  tags = "${var.tags}"
}

