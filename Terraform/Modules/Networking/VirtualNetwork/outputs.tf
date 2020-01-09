output "projVnetName" {
  value = "${azurerm_virtual_network.projvnet.name}"
}

output "projVnetId" {
  value = "${azurerm_virtual_network.projvnet.id}"
}

output "infraSubnetName" {
  value = "${azurerm_subnet.infrasubnet.name}"
}

output "infraSubnetId" {
  value = "${azurerm_subnet.infrasubnet.id}"
}

output "appSubnetName" {
  value = "${azurerm_subnet.appsubnet.name}"
}

output "appSubnetId" {
  value = "${azurerm_subnet.appsubnet.id}"
}

output "dbSubnetName" {
  value = "${azurerm_subnet.dbsubnet.name}"
}

output "dbSubnetId" {
  value = "${azurerm_subnet.dbsubnet.id}"
}

output "k8sSubnetName" {
  value = "${azurerm_subnet.k8ssubnet.name}"
}

output "k8sSubnetId" {
  value = "${azurerm_subnet.k8ssubnet.id}"
}
