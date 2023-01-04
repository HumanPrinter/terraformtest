resource "azurerm_container_registry" "dependabottest" {
  name                   = "dependabottest"
  resource_group_name    = azurerm_resource_group.azuredependabot_terraform.name
  location               = azurerm_resource_group.azuredependabot_terraform.location
  sku                    = "Basic"
  admin_enabled          = false
  anonymous_pull_enabled = false
  tags                   = local.tags
}

resource "azurerm_role_assignment" "azuredevops" {
  scope                = azurerm_container_registry.dependabottest.id
  role_definition_name = "AcrPush"
  principal_id         = data.azuread_service_principal.azuredevops.id
}
