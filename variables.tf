variable "resource_sets" {
  description = <<EOT
Map of resource_sets, attributes below
Required:
    - description
    - label
Optional:
    - resources
    - resources_orn
EOT

  type = map(object({
    description   = string
    label         = string
    resources     = optional(set(string))
    resources_orn = optional(set(string))
  }))
}

