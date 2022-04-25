provider azurerm {
  features {}
}

module "appservice-demo" {
  source                   = "git::https://github.com/CloudTemplates/terraform-modules.git//azure-modules/appservice-linux?ref=main"
  appservice_plan_name     = var.appservice_plan_name
  appservice_plan_tier     = ""
  appservice_plan_size     = ""
  appservice_plan_kind     = ""
  resource_group_name      = var.resource_group_name
  appservice_plan_reserved = ""
  appservice               = var.appservice
  appservice_slot          = var.appservice_slot
  /*dynamic_app_settings     = {
    appservice-1           = {
      APPINSIGHTS_INSTRUMENTATION_KEY = module.appinsights-module.instrumentation_key
    }
  }*/
}