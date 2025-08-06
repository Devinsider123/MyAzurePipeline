module "rg" {
  source = "../module/rg"
  rg_name = "my_rg16"
  location = "West Europe"
  
}

module "storage" {
    depends_on = [ module.rg ]
  source = "../module/storage"
  storage_name             = "mystorage2616"
  location                 = "West Europe"
  rg_name                  = "my_rg16"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}