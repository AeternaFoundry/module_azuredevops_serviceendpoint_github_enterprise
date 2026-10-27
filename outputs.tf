output "serviceendpoint_github_enterprises_id" {
  description = "Map of id values across all serviceendpoint_github_enterprises, keyed the same as var.serviceendpoint_github_enterprises"
  value       = { for k, v in azuredevops_serviceendpoint_github_enterprise.serviceendpoint_github_enterprises : k => v.id }
}
output "serviceendpoint_github_enterprises_auth_oauth" {
  description = "Map of auth_oauth values across all serviceendpoint_github_enterprises, keyed the same as var.serviceendpoint_github_enterprises"
  value       = { for k, v in azuredevops_serviceendpoint_github_enterprise.serviceendpoint_github_enterprises : k => one(v.auth_oauth) }
}
output "serviceendpoint_github_enterprises_auth_personal" {
  description = "Map of auth_personal values across all serviceendpoint_github_enterprises, keyed the same as var.serviceendpoint_github_enterprises"
  value       = { for k, v in azuredevops_serviceendpoint_github_enterprise.serviceendpoint_github_enterprises : k => one(v.auth_personal) }
  sensitive   = true
}
output "serviceendpoint_github_enterprises_authorization" {
  description = "Map of authorization values across all serviceendpoint_github_enterprises, keyed the same as var.serviceendpoint_github_enterprises"
  value       = { for k, v in azuredevops_serviceendpoint_github_enterprise.serviceendpoint_github_enterprises : k => v.authorization }
}
output "serviceendpoint_github_enterprises_description" {
  description = "Map of description values across all serviceendpoint_github_enterprises, keyed the same as var.serviceendpoint_github_enterprises"
  value       = { for k, v in azuredevops_serviceendpoint_github_enterprise.serviceendpoint_github_enterprises : k => v.description }
}
output "serviceendpoint_github_enterprises_project_id" {
  description = "Map of project_id values across all serviceendpoint_github_enterprises, keyed the same as var.serviceendpoint_github_enterprises"
  value       = { for k, v in azuredevops_serviceendpoint_github_enterprise.serviceendpoint_github_enterprises : k => v.project_id }
}
output "serviceendpoint_github_enterprises_service_endpoint_name" {
  description = "Map of service_endpoint_name values across all serviceendpoint_github_enterprises, keyed the same as var.serviceendpoint_github_enterprises"
  value       = { for k, v in azuredevops_serviceendpoint_github_enterprise.serviceendpoint_github_enterprises : k => v.service_endpoint_name }
}
output "serviceendpoint_github_enterprises_url" {
  description = "Map of url values across all serviceendpoint_github_enterprises, keyed the same as var.serviceendpoint_github_enterprises"
  value       = { for k, v in azuredevops_serviceendpoint_github_enterprise.serviceendpoint_github_enterprises : k => v.url }
}

