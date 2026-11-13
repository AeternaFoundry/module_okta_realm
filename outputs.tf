output "realms_id" {
  description = "Map of id values across all realms, keyed the same as var.realms"
  value       = { for k, v in okta_realm.realms : k => v.id }
}
output "realms_is_default" {
  description = "Map of is_default values across all realms, keyed the same as var.realms"
  value       = { for k, v in okta_realm.realms : k => v.is_default }
}
output "realms_name" {
  description = "Map of name values across all realms, keyed the same as var.realms"
  value       = { for k, v in okta_realm.realms : k => v.name }
}
output "realms_realm_type" {
  description = "Map of realm_type values across all realms, keyed the same as var.realms"
  value       = { for k, v in okta_realm.realms : k => v.realm_type }
}

