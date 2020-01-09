variable "rg_name" {
    type = "string"
    description = "Resource group Name"
}

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
variable "acrSku" {
    type = "string"
    description = "Azure Contianer Registry Sku"
  
}

variable "acrAdminEnabled" {
    type = "string"
    description = "Azure Contianer Registry Admin Enabled TRUE / FALSE"
}

/**variable "acrgeoRepLoc" {
    type = "list"
    description = "Azure Contianer Registry Geo Replication Location"
}**/

variable "tags" {
    description = "Enter Tags for the Reource Groups"
}  
