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
}

