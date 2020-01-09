#Create Resource Group in Azure
resource "azurerm_resource_group" "resourcegroup" {
  name     = "${var.prefix}-${var.projCode}-resources"
  location = "${var.location}"
  tags = "${var.tags}"
}

