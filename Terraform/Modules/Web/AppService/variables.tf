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

variable "aspkind" {
    type = "string"
    description = "Enter App Service Plan Kind"
}

variable "aspresr" {
    type = "string"
    description = "Enter App Service Reservations. By Default False"
}

variable "aspsku" {
    type = "string"
    description = "Enter App Service Plan SKU"
}

variable "aspsize" {
    type = "string"
    description = "Enter App Service Plan Size"
}

variable "tags" {
    type = "map"
    description = "Enter Tags for the Reource Groups"  
}