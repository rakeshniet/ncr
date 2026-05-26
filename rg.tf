variable "rgs" {}
# variable "rg_map" {}

resource "azurerm_resource_group" "test2" {
    for_each = var.rgs

  name     = each.value.rg_name
  location = each.value.location
  managed_by = each.value.managed_by
}
