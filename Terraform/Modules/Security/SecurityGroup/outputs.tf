output "infransgId" {
  value = "${azurerm_network_security_group.infransg.id}"
}

output "appnsgId" {
  value = "${azurerm_network_security_group.appnsg.id}"
}

output "dbnsgId" {
  value = "${azurerm_network_security_group.dbnsg.id}"
}