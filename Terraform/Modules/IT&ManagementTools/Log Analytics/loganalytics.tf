resource "azurerm_log_analytics_workspace" "log_workspace" {
  name                = "${var.prefix}-${var.projcode}-logws"
  resource_group_name = "${var.rg_name}"
  location            = "${var.location}"
  sku                 = "${var.logwsSku}"

  tags = "${var.tags}"
}

