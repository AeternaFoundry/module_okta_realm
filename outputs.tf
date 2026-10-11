output "realms_id" {
  description = "Map of id values across all realms, keyed the same as var.realms except keys with no id are omitted"
  value       = { for k, v in okta_realm.realms : k => v.id if v.id != null && length(v.id) > 0 }
}
output "realms_is_default" {
  description = "Map of is_default values across all realms, keyed the same as var.realms except keys with no is_default are omitted"
  value       = { for k, v in okta_realm.realms : k => v.is_default if v.is_default != null }
}
output "realms_name" {
  description = "Map of name values across all realms, keyed the same as var.realms except keys with no name are omitted"
  value       = { for k, v in okta_realm.realms : k => v.name if v.name != null && length(v.name) > 0 }
}
output "realms_realm_type" {
  description = "Map of realm_type values across all realms, keyed the same as var.realms except keys with no realm_type are omitted"
  value       = { for k, v in okta_realm.realms : k => v.realm_type if v.realm_type != null && length(v.realm_type) > 0 }
}

