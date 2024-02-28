resource "azurerm_key_vault_secret" "example" {
  for_each = toset( ["a", "b"] )

  name         = "testname"
  value        = "testvalue"
}
