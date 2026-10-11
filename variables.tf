variable "serviceendpoint_github_enterprises" {
  description = <<EOT
Map of serviceendpoint_github_enterprises, attributes below
Required:
    - project_id
    - service_endpoint_name
Optional:
    - description
    - url
    - auth_oauth (block):
        - oauth_configuration_id (required)
    - auth_personal (block):
        - personal_access_token (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    project_id            = string
    service_endpoint_name = string
    description           = optional(string)
    url                   = optional(string)
    auth_oauth = optional(object({
      oauth_configuration_id = string
    }))
    auth_personal = optional(object({
      personal_access_token = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.serviceendpoint_github_enterprises : (
        v.auth_personal == null || (length(trimspace(v.auth_personal.personal_access_token)) > 0)
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

