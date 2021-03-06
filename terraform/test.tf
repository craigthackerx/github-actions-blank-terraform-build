resource "azurerm_resource_group" "example_rg" {
  location = local.location
  name     = "rg-${var.short}-${var.loc}-${terraform.workspace}-example"
  tags     = local.tags
}

resource "azurerm_application_security_group" "example_asg" {
  location            = local.location
  name                = "asg-${var.short}${var.loc}${terraform.workspace}example"
  resource_group_name = azurerm_resource_group.example_rg.name
  tags                = local.tags
}