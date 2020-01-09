resource "azurerm_kubernetes_cluster" "k8scluster" {
    name = "${var.prefix}-${var.projCode}-${var.svcName}"
    location = "${var.location}"
    resource_group_name = "${var.rg_name}"
    dns_prefix          = "${var.prefix}-${var.projCode}-${var.svcName}-k8s"
    
    kubernetes_version = "${var.k8sVersion}"
    
    
    
    agent_pool_profile {
        name            = "${var.k8sagent_pool_name}"
        count           = "${var.k8sagent_count}"
        vm_size         = "${var.k8svm_size}"
        max_pods        = "${var.k8smax_pods}"
        vnet_subnet_id  = "${var.k8sSubnetId}"
        os_type         = "${var.k8sostype}"
        os_disk_size_gb = "${var.k8sos_disk_size_gb}"
    }

    addon_profile {
        http_application_routing {
            enabled = false
        }
        kube_dashboard {
            enabled = true
        }
        oms_agent {
            enabled = false
            #log_analytics_workspace_id = "${var.log_analytics_workspace_id}"
        }
    }
    

    linux_profile {
        admin_username = "${var.clusteradminuser}"
        ssh_key {
            key_data = "${file(var.clusteradminpassword)}"
        }
    }

    network_profile {
        network_plugin = "${var.k8sNwPlugIn}"
    }

    service_principal {
        client_id     = "${var.client_id}"
        client_secret = "${var.client_secret}"
    }

    role_based_access_control {
        enabled = false
    
        /**azure_active_directory {
        client_app_id     = "${module.rbac.app_client_id}"
        server_app_id     = "${module.rbac.app_server_id}"
        server_app_secret = "${module.rbac.app_server_secret}"
        }  **/  
    }



    #network_profile {    }
    tags = "${var.tags}"
}
