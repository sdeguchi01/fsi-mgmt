variable "configuration_file_path" {
  type        = string
  default     = ""
  description = "The path of the configuration file|7|configuration_file_path."
}

variable "default_location" {
  type        = string
  description = "Location used for deploying Azure resources."
  default     = "eastus"
}

variable "default_postfix" {
  type        = string
  default     = ""
  description = "The deployment postfix for Azure resources. (e.g 'landing-zone')|2|azure_name"
}

variable "root_parent_management_group_id" {
  type        = string
  nullable    = true
  description = "Optional parent for Management Group hierarchy, used as intermediate root Management Group parent, if specified. If empty (default) will deploy beneath Tenant Root Management Group."
}

variable "subscription_id_management" {
  type        = string
  nullable    = true
  description = "The identifier of the Management Subscription. (e.g 00000000-0000-0000-0000-000000000000)|6|azure_subscription_id"
}

variable "subscription_id_identity" {
  type        = string
  nullable    = true
  description = "The identifier of the Identity Subscription. (e.g '00000000-0000-0000-0000-000000000000')|5|azure_subscription_id"
}

variable "subscription_id_connectivity" {
  type        = string
  nullable    = true
  description = "The identifier of the Connectivity Subscription. (e.g '00000000-0000-0000-0000-000000000000')|4|azure_subscription_id"
}

variable "automation_account_name" {
  type        = string
  description = "Optional resource name for an existing Azure Automation account with usage enforced by ALZ policies."
}
