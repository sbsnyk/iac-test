locals {
  myvalues = toset( ["a", "b"] )
}

resource "azurerm_key_vault_secret" "example" {
  for_each = locals.myvalues

  name         = "testname"
  value        = "testvalue"
}
