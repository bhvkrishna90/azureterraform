variable "prefix" {
    type = "string"
    description = "prefix for resource group"
}
variable "projCode" {
    type = "string"
    description = "Enter Project Code"
}
variable "svcName" {
    type = "string"
    description = "The Main Service which will be running in Virtual Machine"
}

variable "location" {
    type = "string"
    description = "Resource group Locatoin"
}

variable "compcount" {
    description = "Enter Required Number of Compute Instances(Virtual Machines and NIC)"
}

variable "rg_name" {
    type = "string"
    description = "Resource group Name"
}


variable "subNetId" {
    type = "string"
    description = "SubNet Id"
}

variable "priipAllocMethod" {
    type = "string"
    description = "Private IP Address Allocation Method"
}

variable "nsgId" {
    type = "string"
    description = "Network Security Group Id"
}

variable "vmSize" {
    type = "string"
    description = "Size of the Virtual Machine"
}


variable "ospublisher" {
    type = "string"
    description = "Name Of the Operating System Publisher"
}

variable "osoffer" {
    type = "string"
    description = "Operating System offer"
}

variable "ossku" {
    type = "string"
    description = "Operating System Sku"
}

variable "osversion" {
    type = "string"
    description = "Operating System Version"
}

variable "mngdisktype" {
    type = "string"
    description = "Managed Disk Type"
}

variable "adminuser" {
    type = "string"
    description = "Virtual Machine Administrator UserName"
}

variable "adminpassword" {
    type = "string"
    description = "Virtual Machine Administrator User Password"
}

variable "ipAllocMethod" {
    type = "string"
    description = "Public IP Address Allocation Method"
}

variable "ip_sku" {
    type = "string"
    description = "The IP Address Sku"
}
variable "tags" {
    type = "map"
    description = "Enter Tags for the Reource Groups"  
}