resource "azurerm_container_registry" "acr" {
  name                     = "${var.prefix}${var.projCode}cr"
  resource_group_name      = "${var.rg_name}"
  location                 = "${var.location}"
  sku                      = "${var.acrSku}"
  admin_enabled            = "${var.acrAdminEnabled}"
  #georeplication_locations = "${var.acrgeoRepLoc}"
  tags                     = "${var.tags}"
}