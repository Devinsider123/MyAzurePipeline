  
resource "azurerm_resource_group" "rg_example" {
  name     = var.rg_name
  location = var.location
}
