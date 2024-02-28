locals {
  myvalues = toset( ["a", "b"] )
}

resource "azurerm_key_vault_secret" "example2" {
  for_each = local.myvalues

  name         = each.key
  value        = "testvalue"
}
