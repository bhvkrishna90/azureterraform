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
    description = "The ResourceGroup Name"
}
variable "svcName" {
    type = "string"
    description = "The Main Service which will be running in Virtual Machine"
}

variable "client_id" {
    type = "string"
    description = "Service Principle Client ID"
}

variable "client_secret" {
    description = "Service Principle Client ID"
}

variable "clusteradminuser" {
    type = "string"
    description = "Virtual Machine Administrator UserName"
}

variable "clusteradminpassword" {
    type = "string"
    description = "Virtual Machine Administrator User Password"
}
variable "k8sVersion" {
    type = "string"
    description = "k8s Cluster Version"
}
variable "k8sagent_pool_name" {
    type = "string"
    description = "Cluster Agent Pool Name"
}

variable "k8sagent_count" {
    type = "string"
    description = "Cluster Agent Count"

}

variable "k8svm_size" {
    type = "string"
    description = "Cluster Agent VM Size"
}

variable "k8sostype" {
    type = "string"
    description = "Cluster Agent OS Type"
}
variable "k8sos_disk_size_gb" {
    type = "string"
    description = "Cluster Agent disk size"
}

variable "k8smax_pods" {
    description = "Maximum Number of pods in Node"
}

variable "k8sSubnetId" {
    type = "string"
    description = "Enter Cluster Subnet Id"
}

variable "k8sNwPlugIn" {
    type = "string"
    description = "AKS Cluster Network PlugIN"
    default = "azure"
}
variable "tags" {
    type = "map"
    description = "Enter tag Details"
}