variable "prefix" {
    type = "string"
    description = "prefix for resource group"
}

variable "projcode" {
    type = "string"
    description = "Enter Project Code"
}

variable "location" {
    type = "string"
    description = "Resource group Locatoin"
}

variable "rg_name"{
    type = "string"
    description = "Resource group Name"

}

variable "logwsSku" {
    type = "string"
    description = "Log Analytcis WorkSpace SKU"
    default = "PerGB2018"
}

variable "tags" {
    type = "map"
    description = "Enter Tags for the Reource Groups"  
}


