locals {
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

resource "azurerm_key_vault_secret" "example3" {
  for_each = local.other_config.myvalues

  name         = each.key
  value        = "testvalue"
}
