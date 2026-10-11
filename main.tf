resource "azuredevops_serviceendpoint_github_enterprise" "serviceendpoint_github_enterprises" {
  for_each = var.serviceendpoint_github_enterprises

  project_id            = each.value.project_id
  service_endpoint_name = each.value.service_endpoint_name
  description           = each.value.description
  url                   = each.value.url

  dynamic "auth_oauth" {
    for_each = each.value.auth_oauth != null ? [each.value.auth_oauth] : []
    content {
      oauth_configuration_id = auth_oauth.value.oauth_configuration_id
    }
  }

  dynamic "auth_personal" {
    for_each = each.value.auth_personal != null ? [each.value.auth_personal] : []
    content {
      personal_access_token = auth_personal.value.personal_access_token
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

