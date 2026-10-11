output "business_metadata_id" {
  description = "Map of id values across all business_metadata, keyed the same as var.business_metadata except keys with no id are omitted"
  value       = { for k, v in confluent_business_metadata.business_metadata : k => v.id if v.id != null && length(v.id) > 0 }
}
output "business_metadata_attribute_definition" {
  description = "Map of attribute_definition values across all business_metadata, keyed the same as var.business_metadata except keys with no attribute_definition are omitted"
  value       = { for k, v in confluent_business_metadata.business_metadata : k => v.attribute_definition if v.attribute_definition != null && length(v.attribute_definition) > 0 }
}
output "business_metadata_credentials" {
  description = "Map of credentials values across all business_metadata, keyed the same as var.business_metadata except keys with no credentials are omitted"
  value       = { for k, v in confluent_business_metadata.business_metadata : k => one(v.credentials) if v.credentials != null && length(v.credentials) > 0 }
  sensitive   = true
}
output "business_metadata_description" {
  description = "Map of description values across all business_metadata, keyed the same as var.business_metadata except keys with no description are omitted"
  value       = { for k, v in confluent_business_metadata.business_metadata : k => v.description if v.description != null && length(v.description) > 0 }
}
output "business_metadata_name" {
  description = "Map of name values across all business_metadata, keyed the same as var.business_metadata except keys with no name are omitted"
  value       = { for k, v in confluent_business_metadata.business_metadata : k => v.name if v.name != null && length(v.name) > 0 }
}
output "business_metadata_rest_endpoint" {
  description = "Map of rest_endpoint values across all business_metadata, keyed the same as var.business_metadata except keys with no rest_endpoint are omitted"
  value       = { for k, v in confluent_business_metadata.business_metadata : k => v.rest_endpoint if v.rest_endpoint != null && length(v.rest_endpoint) > 0 }
}
output "business_metadata_schema_registry_cluster" {
  description = "Map of schema_registry_cluster values across all business_metadata, keyed the same as var.business_metadata except keys with no schema_registry_cluster are omitted"
  value       = { for k, v in confluent_business_metadata.business_metadata : k => one(v.schema_registry_cluster) if v.schema_registry_cluster != null && length(v.schema_registry_cluster) > 0 }
}
output "business_metadata_version" {
  description = "Map of version values across all business_metadata, keyed the same as var.business_metadata except keys with no version are omitted"
  value       = { for k, v in confluent_business_metadata.business_metadata : k => v.version if v.version != null }
}

