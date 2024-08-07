module "management_resources" {
  source  = "Azure/avm-ptn-alz-management/azurerm"
  version = "~> 0.1.0"

  automation_account_name      = try(local.management.automation_account_name, var.automation_account_name)
  location                     = try(local.management.location, var.default_location)
  log_analytics_workspace_name = try(local.management.log_analytics_workspace_name, "")
  resource_group_name          = try(local.management.resource_group_name, "")
  enable_telemetry             = false

  providers = {
    azurerm = azurerm.management
  }
}

module "management_groups_layered_test" {
  source             = "Azure/avm-ptn-alz/azurerm"
  version            = "~> 0.8.0"
  parent_resource_id = "sdeguchi01"
  architecture_name  = "sdeguchi01-test"
  location           = var.default_location
}
