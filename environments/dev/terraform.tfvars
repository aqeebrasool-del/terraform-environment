resource_group = {
  rg1 = {

    name     = "rg-dev"
    location = "West US"
  }
    rg2 = {

    name     = "rg-test2"
    location = "West US"
  }
}


virtual_network = {
  vnet1 = {

    name                = "test-vnet1"
    location            = "West US"
    resource_group_name = "rg-dev"
    address_space       = ["10.0.0.0/16"]
  }
}



subnets = {
  snet1 = {
    name                 = "frontend-subnet"
    resource_group_name  = "rg-dev"
    virtual_network_name = "test-vnet1"
    address_prefixes     = ["10.0.0.0/24"]
  }

  snet2 = {
    name                 = "backend-subnet"
    resource_group_name  = "rg-dev"
    virtual_network_name = "test-vnet1"
    address_prefixes     = ["10.0.1.0/24"]
  }
  snet3 = {
    name                 = "database-subnet"
    resource_group_name  = "rg-dev"
    virtual_network_name = "test-vnet1"
    address_prefixes     = ["10.0.2.0/24"]
  }
}



public_ip = {
  pip1 = {
    name                = "frontend-pip"
    resource_group_name = "rg-dev"
    location            = "West US"
    allocation_method   = "Static"

  }

  pip2 = {
    name                = "backend-pip"
    resource_group_name = "rg-dev"
    location            = "West US"
    allocation_method   = "Static"

  }
}

virtual_machine = {
  vm1 = {
    nic_name                        = "frontend-nic"
    location                        = "West US"
    resource_group_name             = "rg-dev"
    ip_configuration_name           = "internal"
    private_ip_address_allocation   = "Dynamic"
    subnet_name                     = "frontend-subnet"
    virtual_network_name            = "dev-vnet1"
    pip_name                        = "frontend-pip"
    vm_name                         = "vm-001"
    size                            = "Standard_D2s_v3"
    admin_username                  = "devopsadminuser"
    admin_password                  = "Admin@12345"
    disable_password_authentication = "false"
  caching                         = "ReadWrite"
    storage_account_type            = "Standard_LRS"
    publisher                       = "Canonical"
    offer                           = "0001-com-ubuntu-server-jammy"
    sku                             = "22_04-lts"
    version                         = "latest"
  }
  vm2 = {
    nic_name                        = "backend-nic"
    location                        = "West US"
    resource_group_name             = "rg-dev"
    ip_configuration_name           = "internal"
    private_ip_address_allocation   = "Dynamic"
    subnet_name                     = "backend-subnet"
    virtual_network_name            = "dev-vnet1"
    pip_name                        = "backend-pip"
    vm_name                         = "vm-002"
    size                            = "Standard_D2s_v3"
    admin_username                  = "devopsadminuser"
    admin_password                  = "Admin@12345"
    disable_password_authentication = "false"
    caching                         = "ReadWrite"
    storage_account_type            = "Standard_LRS"
    publisher                       = "Canonical"
    offer                           = "0001-com-ubuntu-server-jammy"
    sku                             = "22_04-lts"
    version                         = "latest"


  }
}
windows_virtual_machine = {
  wvm1 = {
    nic_name                        = "frontend-nic"
    location                        = "West US"
    resource_group_name             = "rg-dev"
    ip_configuration_name           = "internal"
    private_ip_address_allocation   = "Dynamic"
    subnet_name                     = "frontend-subnet"
    virtual_network_name            = "dev-vnet1"
    pip_name                        = "frontend-pip"
    vm_name                         = "vm-001"
    size                            = "Standard_D2s_v3"
    admin_username                  = "devopsadminuser"
    admin_password                  = "Admin@12345"
    caching                         = "ReadWrite"
    storage_account_type            = "Standard_LRS"
    publisher                       = "MicrosoftWindowsServer"
    offer                           = "WindowsServer"
    sku                             = "2016-Datacenter"
    version                         = "latest"


  }
  wvm2 = {
    nic_name                        = "backend-nic"
    location                        = "West US"
    resource_group_name             = "rg-dev"
    ip_configuration_name           = "internal"
    private_ip_address_allocation   = "Dynamic"
    subnet_name                     = "backend-subnet"
    virtual_network_name            = "dev-vnet1"
    pip_name                        = "backend-pip"
    vm_name                         = "vm-002"
    size                            = "Standard_D2s_v3"
    admin_username                  = "devopsadminuser"
    admin_password                  = "Admin@12345"
    caching                         = "ReadWrite"
    caching                         = "ReadWrite"
    storage_account_type            = "Standard_LRS"
    publisher                       = "MicrosoftWindowsServer"
    offer                           = "WindowsServer"
    sku                             = "2016-Datacenter"
    version                         = "latest"
    
  }
}