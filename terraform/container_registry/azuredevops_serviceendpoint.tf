resource "azuredevops_serviceendpoint_azurecr" "azurecr" {
  project_id                = data.azuredevops_project.azuredependabot.id
  service_endpoint_name     = "acr_dependabottest"
  resource_group            = azurerm_resource_group.azuredependabot_terraform.name
  azurecr_spn_tenantid      = var.tenant_id
  azurecr_name              = azurerm_container_registry.dependabottest.name
  azurecr_subscription_id   = var.subscription_id
  azurecr_subscription_name = var.subscription_name
  description               = "Service connection with ACR in Azure - Managed by Terraform"
}
