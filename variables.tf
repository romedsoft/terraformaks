variable "RESOURCE_GROUP_NAME_PREFIX" {
  default       = "akscluster-qa"
  description   = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

variable "resource_group_location" {
  default = "centralus"
  description   = "Location of the resource group."
}

variable "agent_count" {
    default = 2
}

variable "ssh_public_key" {
    default = "~/.ssh/id_rsa.pub"
}

variable "dns_prefix" {
    default = "k8sqa"
}

variable CLUSTER_NAME {
    default = "k8sqa"
}

variable RESOURCE_GROUP_NAME {
    default = "akscluster-qa"
}

variable location {
    default = "Central US"
}

variable log_analytics_workspace_name {
    default = "qaLogAnalyticsWorkspaceName"
}

# refer https://azure.microsoft.com/global-infrastructure/services/?products=monitor for log analytics available regions
variable log_analytics_workspace_location {
    default = "centralus"
}

# refer https://azure.microsoft.com/pricing/details/monitor/ for log analytics pricing 
variable log_analytics_workspace_sku {
    default = "PerGB2018"
}

variable AKS_SERVICE_PRINCIPAL_APP_ID {
    default = "w"
}

variable AKS_SERVICE_PRINCIPAL_CLIENT_SECRET {
    default = "x"
}

variable AKS_SERVICE_PRINCIPAL_OBJECT_ID {
    default = "y"
}

variable AKS_SERVICE_PRINCIPAL_TENANT_ID {
    default = "y"
}

variable AKS_SUBSCRIPTION_ID {
    default = "z"
}

variable BACKEND_RESOURCE_GROUP{
    default = "akscluster"
}

variable BACKEND_STORAGE_ACCOUNT_NAME{
    default = "storageaccountname"
}

variable BACKEND_CONTAINER_NAME{
    default = "containername"
}

variable BACKEND_KEY{
    default = "qa.terraform.tfstate"
}

variable ENVIRONMENT_TAG{
    default = "qa"
}

variable PUBLIC_IP_NAME{
    default = "trainingPublicIP"
}