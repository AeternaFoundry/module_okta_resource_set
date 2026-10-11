output "resource_sets_id" {
  description = "Map of id values across all resource_sets, keyed the same as var.resource_sets except keys with no id are omitted"
  value       = { for k, v in okta_resource_set.resource_sets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "resource_sets_description" {
  description = "Map of description values across all resource_sets, keyed the same as var.resource_sets except keys with no description are omitted"
  value       = { for k, v in okta_resource_set.resource_sets : k => v.description if v.description != null && length(v.description) > 0 }
}
output "resource_sets_label" {
  description = "Map of label values across all resource_sets, keyed the same as var.resource_sets except keys with no label are omitted"
  value       = { for k, v in okta_resource_set.resource_sets : k => v.label if v.label != null && length(v.label) > 0 }
}
output "resource_sets_resources" {
  description = "Map of resources values across all resource_sets, keyed the same as var.resource_sets except keys with no resources are omitted"
  value       = { for k, v in okta_resource_set.resource_sets : k => v.resources if v.resources != null && length(v.resources) > 0 }
}
output "resource_sets_resources_orn" {
  description = "Map of resources_orn values across all resource_sets, keyed the same as var.resource_sets except keys with no resources_orn are omitted"
  value       = { for k, v in okta_resource_set.resource_sets : k => v.resources_orn if v.resources_orn != null && length(v.resources_orn) > 0 }
}

