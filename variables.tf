variable "sagemaker_model_package_group_policies" {
  description = <<EOT
Map of sagemaker_model_package_group_policies, attributes below
Required:
    - model_package_group_name
    - resource_policy
Optional:
    - region
EOT

  type = map(object({
    model_package_group_name = string
    resource_policy          = string
    region                   = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.sagemaker_model_package_group_policies : (
        can(jsondecode(v.resource_policy))
      )
    ])
    error_message = "must be valid JSON"
  }
}

