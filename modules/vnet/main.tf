resource "azurerm_network_security_group" "nsg" {
  name                = var.nsg_name
  location            = var.location
  resource_group_name = var.rg_name
}

resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  location            = var.location
  resource_group_name = var.rg_name
  address_space       = var.vnet_cicdr
}

 resource "azurerm_subnet" "sub1" {
  name                 = var.sub1_name
  resource_group_name  = var.rg_name
  virtual_network_name = var.azurerm_virtual_network.name.id
  address_prefixes     = var.sub1_cicdr
 }
 resource "azurerm_subnet" "sub2" {
  name                 = var.sub2_name
  resource_group_name  = var.rg_name
  virtual_network_name = var.azurerm_virtual_network.name.id
  address_prefixes     = var.sub2_cicdr
 }

  
