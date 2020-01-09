resource "azurerm_network_security_group" "dbnsg" {
  name                = "${var.prefix}-${var.projCode}-db-nsg"
  location            = "${var.location}"
  resource_group_name = "${var.rg_name}"
  tags = "${var.tags}"

}

resource "azurerm_network_security_rule" "dbOut" {
  name                        = "allow_traffic_out"
  priority                    = 100
  direction                   = "Outbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "*"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = "${var.rg_name}"
  network_security_group_name = "${azurerm_network_security_group.dbnsg.name}"
}