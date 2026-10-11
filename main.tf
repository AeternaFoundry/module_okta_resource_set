resource "okta_resource_set" "resource_sets" {
  for_each = var.resource_sets

  description   = each.value.description
  label         = each.value.label
  resources     = each.value.resources
  resources_orn = each.value.resources_orn
}

