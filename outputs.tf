output "mcp_configs_lookup_org_id" {
  description = "Map of org_id values across all mcp_configs_lookup, keyed the same as var.mcp_configs_lookup except keys with no org_id are omitted"
  value       = { for k, v in data.mongodbatlas_mcp_configs.mcp_configs_lookup : k => v.org_id if v.org_id != null && length(v.org_id) > 0 }
}
output "mcp_configs_lookup_results" {
  description = "Map of results values across all mcp_configs_lookup, keyed the same as var.mcp_configs_lookup except keys with no results are omitted"
  value       = { for k, v in data.mongodbatlas_mcp_configs.mcp_configs_lookup : k => v.results if v.results != null && length(v.results) > 0 }
}

