resource "random_string" "random" {
  length = 4
  special = false
  lower = true
  upper = false
  number = false
  override_special = "/@£$?#%^&*+-_"
}

module "resourceGroup" {
  source = "..\\..\\Modules\\ResourceGroup"
  prefix = "${random_string.random.result}"
  projCode = "${var.projCode}"
  location = "${var.location}"
  tags = "${var.tags}"
}

/**module "servicePrinciple" {
  source = ".\\ServicePrincipal"
  prefix = "${random_string.random.result}"
  projCode = "${var.projCode}"
  svcName = "${var.svcName}"
}**/


module "virtualNetwork" {
  source = "..\\..\\Modules\\Networking\\VirtualNetwork"
  prefix = "${random_string.random.result}"
  projCode = "${var.projCode}"
  location = "${module.resourceGroup.rgLoc}"
  rg_name = "${module.resourceGroup.rgName}"
  vNetAddrSpace = "${var.vNetAddrSpace}"
  infraSubNetAddrSpace = "${var.infraSubNetAddrSpace}"
  appSubNetAddrSpace = "${var.appSubNetAddrSpace}"
  dbSubNetAddrSpace = "${var.dbSubNetAddrSpace}"
  k8sSubNetAddrSpace = "${var.k8sSubNetAddrSpace}"
  tags = "${var.tags}"
}

module "k8s" {
  source              = "..\\..\\Modules\\Containers\\KubernetesServices"
  prefix              = "${random_string.random.result}"
  projCode            = "${var.projCode}"
  svcName             = "${var.svcName}"
  location            = "${module.resourceGroup.rgLoc}"
  rg_name             = "${module.resourceGroup.rgName}"
  #client_id           = "${module.servicePrinciple.service_principal_client_id}"
  #client_secret       = "${module.servicePrinciple.service_principal_client_secret}"
  client_id           = "${var.client_id}"
  client_secret       = "${var.client_secret}"
  clusteradminuser    = "${var.clusteradminuser}"
  clusteradminpassword= "${var.clusteradminpassword}"
  k8sVersion          = "${var.k8sVersion}"
  k8sSubnetId         = "${module.virtualNetwork.k8sSubnetId}"
  k8smax_pods         = "${var.k8smax_pods}"
  k8sagent_pool_name  = "${var.k8sagent_pool_name}"
  k8sagent_count      = "${var.k8sagent_count}"

  k8svm_size          = "${var.k8svm_size}"
  k8sostype           = "${var.k8sostype}"
  k8sos_disk_size_gb  = "${var.k8sos_disk_size_gb}"
  tags = "${var.tags}"
}



