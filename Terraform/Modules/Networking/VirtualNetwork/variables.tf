variable "prefix" {
    type = "string"
    description = "prefix for resource group"
}
variable "projCode" {
    type = "string"
    description = "Enter Project Code"
}
variable "location" {
    type = "string"
    description = "Resource group Locatoin"
}

variable "rg_name" {
    type = "string"
    description = "Resource group Name"
}

variable "vNetAddrSpace" {
    type = "list"
    description = "Virtual network Address Range"
}

variable "infraSubNetAddrSpace" {
    type = "string"
    description = "Infrastructure Subnet Range"
}

variable "appSubNetAddrSpace" {
    type = "string"
    description = "application Subnet Range"
}

variable "dbSubNetAddrSpace" {
    type = "string"
    description = "database Subnet Range"
}

variable "k8sSubNetAddrSpace" {
    type = "string"
    description = "k8s Cluster Subnet Range"
}

variable "tags" {
    type = "map"
    description = "Enter Tags for the Reource Groups"  
}