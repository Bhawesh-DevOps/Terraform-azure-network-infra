module "azurerm_resource_group" {
    source = "../child/azurerm_resource_group"
    rg = var.rg
}
module "virtual_network" {
    source = "../child/Virtual_network"
    depends_on = [ module.azurerm_resource_group ]
    vnet = var.vnet
  }
  module "name" {
    source = "../child/subnet"
    depends_on = [ module.virtual_network ]
     sbt = var.sbt
  }