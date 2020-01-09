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

variable "tags" {
    type = "map"
    description = "Enter Tags for the Reource Groups"  
}