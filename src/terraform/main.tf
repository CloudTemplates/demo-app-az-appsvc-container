provider azurerm {
  features {}
}

module "appservice-demo" {
  source               = "git::https://github.com/CloudTemplates/terraform-modules.git//azure-modules/appservice-linux?ref=main"
  appservice_plan_name = var.appservice_plan_name
  resource_group_name  = var.resource_group_name
  appservice_os_type   = var.appservice_os_type
  appservice_sku_name  = var.appservice_sku_name
  appservice           = {
    appservice-1 = {
      appservice_name      = var.appservice_name1

      app_settings         = {
        "DOCKER_REGISTRY_SERVER_URL"             = var.docker_registry_server_url
        "DOCKER_REGISTRY_SERVER_USERNAME"        = var.docker_registry_server_user
        "DOCKER_REGISTRY_SERVER_PASSWORD"        = var.docker_registry_server_pwd
      }

      site_config          = [
        {
          always_on         = true
          linux_fx_version  = "JAVA|11-java11"
          health_check_path = "/actuator/health"
          min_tls_verion    = "1.2"
          ftps_state        = "FtpsOnly"
          ip_restriction    = {}
        }
      ]
    }
  }
}