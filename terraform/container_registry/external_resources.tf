data "azuredevops_project" "azuredependabot" {
  name = "AzureDependabot"
}

data "azuread_service_principal" "azuredevops" {
  display_name = "Azure DevOps pipelines"
}
