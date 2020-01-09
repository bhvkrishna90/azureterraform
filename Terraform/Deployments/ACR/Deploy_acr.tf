resource "random_string" "random" {
  length = 4
  special = false
  lower = true
  upper = false
  override_special = "/@£$?#%^&*+-_"
}

module "resourceGroup" {
  source = "..\\..\\Modules\\ResourceGroup"
  prefix = "${random_string.random.result}"
  projCode = "${var.projCode}"
  location = "${var.location}"
  tags = "${var.tags}"
}

module "containerRegistry" {
  source = "..\\..\\Modules\\Containers\\ContainerRegistry"
  prefix = "${random_string.random.result}"
  projCode = "${var.projCode}"
  location = "${var.location}"
  rg_name = "${module.resourceGroup.rgName}"
  acrSku = "${var.acrSku}"
  acrAdminEnabled = "${var.acrAdminEnabled}"
  #acrgeoRepLoc = "${var.acrgeoRepLoc}"
  tags = "${var.tags}"
}


