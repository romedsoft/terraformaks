resource "azurerm_kubernetes_cluster" "k8s" {
    name                = var.CLUSTER_NAME
    location            = var.resource_group_location
    resource_group_name = var.RESOURCE_GROUP_NAME
    dns_prefix          = var.dns_prefix

    default_node_pool {
        name            = "agentpool"
        node_count      = var.agent_count
        vm_size         = "Standard_B2s"
    }

    service_principal {
        client_id     = var.AKS_SERVICE_PRINCIPAL_APP_ID
        client_secret = var.AKS_SERVICE_PRINCIPAL_CLIENT_SECRET
    }

    network_profile {
        load_balancer_sku = "Standard"
        network_plugin = "kubenet"
    }

    tags = {
        Environment = var.ENVIRONMENT_TAG
    }
}