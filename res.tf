resource "azurerm_resource_group" "rg_aks" {
  name     = var.rgname
  location = var.location
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = "aks1"
  location            = var.location
  resource_group_name = var.rgname
  dns_prefix          = "aks1"
  kubernetes_version  = "1.19.1"
  depends_on          = [azurerm_resource_group.rg_aks]

  default_node_pool {
    name                = "default"
    node_count          = 2
    vm_size             = "Standard_B2s"
    os_disk_size_gb     = 50
    max_pods            = 30
    enable_auto_scaling = false
  }

  service_principal {
    client_id     = var.client_id
    client_secret = var.client_secret
  }

  tags = {
    Environment = "Test"
  }
}

