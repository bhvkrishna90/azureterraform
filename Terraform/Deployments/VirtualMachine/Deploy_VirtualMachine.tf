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

module "NetworkSecurityGroup" {
  source = "..\\..\\Modules\\Security\\SecurityGroup"
  prefix = "${random_string.random.result}"
  projCode = "${var.projCode}"
  location = "${module.resourceGroup.rgLoc}"
  rg_name = "${module.resourceGroup.rgName}"
  tags = "${var.tags}"
}

module "VirtualMachine" {
  source = "..\\..\\Modules\\Compute\\VirtualMachine"
  compcount = "${var.compcount}"
  prefix = "${random_string.random.result}"
  projCode = "${var.projCode}"
  svcName = "${var.svcName}"
  location = "${module.resourceGroup.rgLoc}"
  rg_name = "${module.resourceGroup.rgName}"
  ip_sku = "${var.ip_sku}"
  ipAllocMethod = "${var.ipAllocMethod}"
  priipAllocMethod = "${var.priipAllocMethod}"
  subNetId = "${module.virtualNetwork.infraSubnetId}"
  nsgId = "${module.NetworkSecurityGroup.infransgId}"
  vmSize = "${var.vmSize}"
  ospublisher = "${var.ospublisher}"
  osoffer     = "${var.osoffer}"
  ossku       = "${var.ossku}"
  osversion   = "${var.osversion}"
  mngdisktype = "${var.mngdisktype}"
  adminuser = "${var.adminuser}"
  adminpassword = "${var.adminpassword}"
  tags = "${var.tags}"
}
