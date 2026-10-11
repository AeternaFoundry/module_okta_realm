resource "okta_realm" "realms" {
  for_each = var.realms

  name       = each.value.name
  realm_type = each.value.realm_type
}

