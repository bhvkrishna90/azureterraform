resource "azurerm_log_analytics_solution" "log_solution_aks" {
  solution_name         = "ContainerInsights"
  resource_group_name   = "${var.rg_name}"
  location              = "${var.location}"
  workspace_resource_id = "${azurerm_log_analytics_workspace.log_workspace.id}"
  workspace_name        = "${azurerm_log_analytics_workspace.log_workspace.name}"

  plan {
    publisher = "Microsoft"
    product   = "OMSGallery/ContainerInsights"
  }
}