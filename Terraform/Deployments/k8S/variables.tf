variable "projCode" {
    description = "Enter Project Code"
}

variable "location" {
    description = "Resource group Locatoin"
}

variable "svcName" {
    description = "The Main Service which will be running in Virtual Machine"
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

variable "client_id" {
    description = "Enter Client ID of k8S Application"

}

variable "k8sVersion" {
    description = "k8s Cluster Version"
}

variable "client_secret" {
    description = "Enter Client ID of k8S Application"
}

variable "clusteradminuser" {
    description = "Virtual Machine Administrator UserName"
}

variable "clusteradminpassword" {
    description = "Virtual Machine Administrator User Password"
}

variable "k8sagent_pool_name" {
    description = "Cluster Agent Pool Name"
}

variable "k8sagent_count" {
    description = "Cluster Agent Count"
}

variable "k8svm_size" {
    description = "Cluster Agent VM Size"
}

variable "k8smax_pods" {
    description = "k8s Cluster Maximum pods"
}
variable "k8sostype" {
    description = "Cluster Agent OsType"
}
variable "k8sos_disk_size_gb" {
    description = "Cluster Agent Disk Size"
}

variable "tags" {
    type = "map"
    default = {
        environment = "Development"
        source      = "Terrafrom"
        CreatedBy   = "Krishna Bhimanavarjula"
    }
}