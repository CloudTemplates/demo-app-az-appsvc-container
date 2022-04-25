variable "resource_group_name" {
  description = "Resource group name in which appservice plan or appservice will be created."
  type        = string
}

variable "appservice" {
  description = "AppService name(s)"
  type        = any
  default     = {}
}
variable "appservice_slot" {
  description = "AppService slot name"
  type        = any
  default     = {}
}
variable "appservice_os_type" {
  description = "Appservice plan OS type. Example- Linux, windows"
  type        = string
  default     = null
}
variable "appservice_sku_name" {
  description = "Size of appservice plan. Example- S1, P1 etc"
  type        = string
  default     = "F1"
}
variable "appservice_plan_name" {
  description = "AppService plan name"
  type        = string
  default     = null
}
variable "existing_appservice_plan_name" {
  description = "Existing AppService plan name in which appservice has to be created"
  type        = string
  default     = null
}
variable "identity_type" {
  type        = string
  description = "Type of manged service identity for the application"
  default     = "SystemAssigned"
}
variable "dynamic_app_settings" {
  type        = any
  description = "Any configurations whose values are retrieved during runtime"
  default     = {}
}
variable "custom_tags" {
  type        = any
  description = "Add any custom tags apart from the ones retrieved from parent RG"
  default     = {}
}

variable "appservice_name1" {
  description = "AppService name"
  type        = string
}

variable docker_registry_server_url {
  description = "docker registry server url"
  type = string
}

variable docker_registry_server_user {
  description = "docker registry server user"
  type = string
}

variable docker_registry_server_pwd {
  description = "docker registry server pwd"
  type = string
}

