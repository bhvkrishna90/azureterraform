resource "azurerm_app_service_plan" "appServPlan" {
  name                = "${var.prefix}-${var.projCode}-asp"
  location            = "${var.location}"
  resource_group_name = "${var.rg_name}"
  kind                = "${var.aspkind}"
  reserved            = "${var.aspresr}"

  sku {
    tier = "${var.aspsku}"
    size = "${var.aspsize}"
  }

  tags = "${var.tags}"

}