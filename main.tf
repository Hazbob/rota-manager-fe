resource "azurerm_resource_group" "rota_manager" {
  name     = "rota_resources"
  location = "West Europe"
}

resource "azurerm_static_web_app" "rota_manager_fe" {
  name                = "rota-manager"
  resource_group_name = azurerm_resource_group.rota_manager.name
  location            = azurerm_resource_group.rota_manager.location
}