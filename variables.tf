variable "mcp_configs_lookup" {
  description = <<EOT
Map of mcp_configs_lookup, attributes below
Required:
    - org_id
EOT

  type = map(object({
    org_id = string
  }))
}

