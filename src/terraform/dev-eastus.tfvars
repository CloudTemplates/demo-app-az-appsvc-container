resource_group_name = "cst-myorg-azapp-dev-eastus-rg"
appservice_sku_name = "B1"
appservice = {
  appservice-1 = {
    appservice_name = "appservice-demo1"
    appservice_plan_name     = "sample-asp"
    site_config = [{
      always_on =  true
      #app_command_line          = "/home/site/wwwroot/init.sh"
      linux_fx_version          =  "JAVA|11-java11"
      health_check_path         =  "/actutator/health"
      min_tls_verion            = "1.2"
      ftps_state                = "FTPS Only"
    }]
  }
}