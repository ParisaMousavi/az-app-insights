resource "azurerm_application_insights" "this" {
  name                                  = var.name
  location                              = var.location
  resource_group_name                   = var.resource_group_name
  application_type                      = var.application_type
  workspace_id                          = var.workspace_id
  daily_data_cap_in_gb                  = var.daily_data_cap_in_gb
  daily_data_cap_notifications_disabled = var.daily_data_cap_notifications_disabled
  retention_in_days                     = var.retention_in_days
  tags = merge(
    var.additional_tags,
    {
      created-by = "iac-tf"
    },
  )
}
