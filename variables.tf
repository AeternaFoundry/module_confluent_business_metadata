variable "business_metadata" {
  description = <<EOT
Map of business_metadata, attributes below
Required:
    - name
Optional:
    - description
    - rest_endpoint
    - attribute_definition (block):
        - default_value (optional)
        - description (optional)
        - is_optional (optional)
        - name (required)
    - credentials (block):
        - key (required)
        - secret (required)
    - schema_registry_cluster (block):
        - id (required)
EOT

  type = map(object({
    name          = string
    description   = optional(string)
    rest_endpoint = optional(string)
    attribute_definition = optional(list(object({
      default_value = optional(string)
      description   = optional(string)
      is_optional   = optional(bool)
      name          = string
    })))
    credentials = optional(object({
      key    = string
      secret = string
    }))
    schema_registry_cluster = optional(object({
      id = string
    }))
  }))
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

