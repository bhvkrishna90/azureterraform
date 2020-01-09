output "acrId" {
  value = "${azurerm_container_registry.acr.id}"
}

output "acrServer" {
  value = "${azurerm_container_registry.acr.login_server}"
}

output "acrAdminuser" {
  value = "${azurerm_container_registry.acr.admin_username}"
}

output "acrPassword" {
  value = "${azurerm_container_registry.acr.admin_password}"
}


 

 