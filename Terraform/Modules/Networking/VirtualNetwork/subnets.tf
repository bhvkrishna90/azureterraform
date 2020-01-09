resource "azurerm_subnet" "infrasubnet" {
  name                 = "${var.prefix}-${var.projCode}-infra"
  resource_group_name  = "${var.rg_name}"
  virtual_network_name = "${azurerm_virtual_network.projvnet.name}"
  address_prefix       = "${var.infraSubNetAddrSpace}"
}

resource "azurerm_subnet" "appsubnet" {
  name                 = "${var.prefix}-${var.projCode}-app"
  resource_group_name  = "${var.rg_name}"
  virtual_network_name = "${azurerm_virtual_network.projvnet.name}"
  address_prefix       = "${var.appSubNetAddrSpace}"
}

resource "azurerm_subnet" "dbsubnet" {
  name                 = "${var.prefix}-${var.projCode}-db"
  resource_group_name  = "${var.rg_name}"
  virtual_network_name = "${azurerm_virtual_network.projvnet.name}"
  address_prefix       = "${var.dbSubNetAddrSpace}"
}

resource "azurerm_subnet" "k8ssubnet" {
  name                 = "${var.prefix}-${var.projCode}-k8s"
  resource_group_name  = "${var.rg_name}"
  virtual_network_name = "${azurerm_virtual_network.projvnet.name}"
  address_prefix       = "${var.k8sSubNetAddrSpace}"
}

