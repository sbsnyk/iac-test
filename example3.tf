locals {
  myvalues = toset( ["a", "b"] )
  config = {
    myvalues = toset( ["a", "b"] )
  }

  other_config = merge(
    local.config,
    {
      myvalues = toset( ["c", "d"] )
    }
  )
}

resource "azurerm_key_vault_secret" "example" {
  for_each = locals.other_config.myvalues

  name         = "testname"
  value        = "testvalue"
}
