#Project Details
projCode = "kri"
#Resources Details
location = "Central US"
#Network Details
vNetAddrSpace = ["10.0.0.0/16"]
infraSubNetAddrSpace = "10.0.2.0/24"
appSubNetAddrSpace = "10.0.3.0/24"
dbSubNetAddrSpace = "10.0.4.0/24"
k8sSubNetAddrSpace = "10.0.5.0/24"

#IP  Address Details
ipAllocMethod = "Dynamic"
ip_sku = "Basic"
priipAllocMethod = "Dynamic"

#Virtual Machine Details
compcount = 1
svcName = "jenkins"
vmSize = "Standard_DS1_v2"
ospublisher = "Canonical"
osoffer = "UbuntuServer"
ossku = "16.04-LTS"
osversion = "latest"
mngdisktype = "Standard_LRS"
adminuser = "jenkinsadmin"
adminpassword = "Password1234!"
