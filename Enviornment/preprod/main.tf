module "resource_group" {
  source = "../../Child_Module/azurerm_resource_group"
  rgs    = var.rgs
}

module "storage_account" {
  source          = "../../Child_Module/azurerm_storage_account"
  depends_on      = [module.resource_group]
  storage_account = var.storage_account

}