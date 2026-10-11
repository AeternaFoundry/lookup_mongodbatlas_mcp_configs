data "mongodbatlas_mcp_configs" "mcp_configs_lookup" {
  for_each = var.mcp_configs_lookup

  org_id = each.value.org_id
}

