
resource "azurerm_network_security_group" "infransg" {
  name                = "${var.prefix}-${var.projCode}-infra-nsg"
  location            = "${var.location}"
  resource_group_name = "${var.rg_name}"
  tags = "${var.tags}"
}


resource "azurerm_network_security_rule" "jenkins" {
  name                        = "allow_8080_in"
  priority                    = 101
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "8080"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = "${var.rg_name}"
  network_security_group_name = "${azurerm_network_security_group.infransg.name}"
}

resource "azurerm_network_security_rule" "ssh" {
  name                        = "allow_22_in"
  priority                    = 102
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "22"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = "${var.rg_name}"
  network_security_group_name = "${azurerm_network_security_group.infransg.name}"
}



resource "azurerm_network_security_rule" "infraOut" {
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
  network_security_group_name = "${azurerm_network_security_group.infransg.name}"
}