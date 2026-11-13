variable "realms" {
  description = <<EOT
Map of realms, attributes below
Required:
    - name
Optional:
    - realm_type
EOT

  type = map(object({
    name       = string
    realm_type = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.realms : (
        v.realm_type == null || (contains(["PARTNER", "DEFAULT"], v.realm_type))
      )
    ])
    error_message = "must be one of: \"PARTNER\", \"DEFAULT\""
  }
}

