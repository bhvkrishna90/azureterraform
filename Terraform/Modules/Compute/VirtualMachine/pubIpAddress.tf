
/**resource "azurerm_public_ip_prefix" "infrapip" {
  name                = "${var.prefix}-${var.projcode}-infrapipprefix"
  location            = "${var.location}"
  resource_group_name = "${var.rg_name}"
  prefix_length = 31
  tags = {
    environment = "dev"
  }
}**/

resource "azurerm_public_ip" "svcpip" {
  count               = "${var.compcount}"
  name                = "${var.prefix}-${var.projCode}-${var.svcName}-pip${count.index}"
  location            = "${var.location}"
  resource_group_name = "${var.rg_name}"
  sku                 = "${var.ip_sku}"
  allocation_method   = "${var.ipAllocMethod}"
  domain_name_label   = "${var.prefix}-${var.projCode}-${var.svcName}${count.index}"
  #To use this Argument IP SKU Should be Standard
  #public_ip_prefix_id = "${azurerm_public_ip_prefix.infrapip.id}"

  tags = "${var.tags}"
}
