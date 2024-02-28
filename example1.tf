resource "azurerm_key_vault_secret" "example1" {
  for_each = toset( ["a", "b"] )

  name         = "testname"
  value        = "testvalue"
}
