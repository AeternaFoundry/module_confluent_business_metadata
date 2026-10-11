resource "confluent_business_metadata" "business_metadata" {
  for_each = var.business_metadata

  name          = each.value.name
  description   = each.value.description
  rest_endpoint = each.value.rest_endpoint

  dynamic "attribute_definition" {
    for_each = each.value.attribute_definition != null ? each.value.attribute_definition : []
    content {
      default_value = attribute_definition.value.default_value
      description   = attribute_definition.value.description
      is_optional   = attribute_definition.value.is_optional
      name          = attribute_definition.value.name
    }
  }

  dynamic "credentials" {
    for_each = each.value.credentials != null ? [each.value.credentials] : []
    content {
      key    = credentials.value.key
      secret = credentials.value.secret
    }
  }

  dynamic "schema_registry_cluster" {
    for_each = each.value.schema_registry_cluster != null ? [each.value.schema_registry_cluster] : []
    content {
      id = schema_registry_cluster.value.id
    }
  }
}

