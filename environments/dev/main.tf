module "resource_group" {
  source         = "../modules/azurerm_resource_group"
  resource_group = var.resource_group

}

module "virtual_network" {
  source     = "../modules/azurerm_vnet"
  depends_on = [module.resource_group]
  vnets      = var.virtual_network

}

module "subnets" {
  source     = "../modules/azurerm_subnet"
  depends_on = [module.virtual_network]
  subnets    = var.subnets

}


module "public_ip" {
  source     = "../modules/azurerm_public_ip"
  depends_on = [module.resource_group]
  public_ip  = var.public_ip

}

module "virtual_machine" {
  source          = "../modules/azurerm_virtual_machine"
  depends_on      = [module.public_ip, module.subnets]
  virtual_machine = var.virtual_machine
}

module "windows_virtual_machine" {
  source = "../modules/azurerm_windows_virtual_machine"
  windows_virtual_machine = var.windows_virtual_machine
  depends_on = [ module.public_ip ]
}