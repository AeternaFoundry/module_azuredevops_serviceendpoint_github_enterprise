output "serviceendpoint_github_enterprises_id" {
  description = "Map of id values across all serviceendpoint_github_enterprises, keyed the same as var.serviceendpoint_github_enterprises except keys with no id are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_github_enterprise.serviceendpoint_github_enterprises : k => v.id if v.id != null && length(v.id) > 0 }
}
output "serviceendpoint_github_enterprises_auth_oauth" {
  description = "Map of auth_oauth values across all serviceendpoint_github_enterprises, keyed the same as var.serviceendpoint_github_enterprises except keys with no auth_oauth are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_github_enterprise.serviceendpoint_github_enterprises : k => one(v.auth_oauth) if v.auth_oauth != null && length(v.auth_oauth) > 0 }
}
output "serviceendpoint_github_enterprises_auth_personal" {
  description = "Map of auth_personal values across all serviceendpoint_github_enterprises, keyed the same as var.serviceendpoint_github_enterprises except keys with no auth_personal are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_github_enterprise.serviceendpoint_github_enterprises : k => one(v.auth_personal) if v.auth_personal != null && length(v.auth_personal) > 0 }
  sensitive   = true
}
output "serviceendpoint_github_enterprises_authorization" {
  description = "Map of authorization values across all serviceendpoint_github_enterprises, keyed the same as var.serviceendpoint_github_enterprises except keys with no authorization are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_github_enterprise.serviceendpoint_github_enterprises : k => v.authorization if v.authorization != null && length(v.authorization) > 0 }
}
output "serviceendpoint_github_enterprises_description" {
  description = "Map of description values across all serviceendpoint_github_enterprises, keyed the same as var.serviceendpoint_github_enterprises except keys with no description are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_github_enterprise.serviceendpoint_github_enterprises : k => v.description if v.description != null && length(v.description) > 0 }
}
output "serviceendpoint_github_enterprises_project_id" {
  description = "Map of project_id values across all serviceendpoint_github_enterprises, keyed the same as var.serviceendpoint_github_enterprises except keys with no project_id are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_github_enterprise.serviceendpoint_github_enterprises : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "serviceendpoint_github_enterprises_service_endpoint_name" {
  description = "Map of service_endpoint_name values across all serviceendpoint_github_enterprises, keyed the same as var.serviceendpoint_github_enterprises except keys with no service_endpoint_name are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_github_enterprise.serviceendpoint_github_enterprises : k => v.service_endpoint_name if v.service_endpoint_name != null && length(v.service_endpoint_name) > 0 }
}
output "serviceendpoint_github_enterprises_url" {
  description = "Map of url values across all serviceendpoint_github_enterprises, keyed the same as var.serviceendpoint_github_enterprises except keys with no url are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_github_enterprise.serviceendpoint_github_enterprises : k => v.url if v.url != null && length(v.url) > 0 }
}

