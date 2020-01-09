variable "projCode" {
    description = "Enter Project Code"
}

variable "location" {
    description = "Resource group Locatoin"
}

variable "vNetAddrSpace" {
    description = "Resource group Name"
}

variable "infraSubNetAddrSpace" {
    description = "Resource group Name"
}

variable "appSubNetAddrSpace" {
    description = "Resource group Name"
}

variable "dbSubNetAddrSpace" {
    description = "Resource group Name"
}

variable "k8sSubNetAddrSpace" {
    type = "string"
    description = "k8s Cluster Subnet Range"
}

variable "ipAllocMethod" {
    description = "Public IP Address Allocation Method"
}

variable "svcName" {
    description = "The Main Service which will be running in Virtual Machine"
}
variable "compcount" {
    description = "Enter Required Number of Compute Instances(Virtual Machines and NIC)"
}

variable "ip_sku" {
    description = "The IP Address Sku"
}

variable "priipAllocMethod" {
    description = "Private IP Address Allocation Method"
}

variable "vmSize" {
    description = "Size of the Virtual Machine"
}

variable "ospublisher" {
    description = "Name Of the Operating System Publisher"
}

variable "osoffer" {
    description = "Operating System offer"
}

variable "ossku" {
    description = "Operating System Sku"
}

variable "osversion" {
    description = "Operating System Version"
}

variable "mngdisktype" {
    description = "Managed Disk Type"
}

variable "adminuser" {
    description = "Virtual Machine Administrator UserName"
}

variable "adminpassword" {
    description = "Virtual Machine Administrator User Password"
}

variable "tags" {
    type = "map"
    default = {
        environment = "Development"
        source      = "Terrafrom"
        CreatedBy   = "Krishna Bhimanavarjula"
    }
}