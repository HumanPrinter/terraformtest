resource "azurerm_resource_group" "azuredependabot_terraform" {
  name     = "rg-azuredependabot-terraform"
  location = local.location
  tags     = local.tags
}
