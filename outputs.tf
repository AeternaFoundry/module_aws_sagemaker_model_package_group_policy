output "sagemaker_model_package_group_policies_id" {
  description = "Map of id values across all sagemaker_model_package_group_policies, keyed the same as var.sagemaker_model_package_group_policies"
  value       = { for k, v in aws_sagemaker_model_package_group_policy.sagemaker_model_package_group_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "sagemaker_model_package_group_policies_model_package_group_name" {
  description = "Map of model_package_group_name values across all sagemaker_model_package_group_policies, keyed the same as var.sagemaker_model_package_group_policies"
  value       = { for k, v in aws_sagemaker_model_package_group_policy.sagemaker_model_package_group_policies : k => v.model_package_group_name if v.model_package_group_name != null && length(v.model_package_group_name) > 0 }
}
output "sagemaker_model_package_group_policies_region" {
  description = "Map of region values across all sagemaker_model_package_group_policies, keyed the same as var.sagemaker_model_package_group_policies"
  value       = { for k, v in aws_sagemaker_model_package_group_policy.sagemaker_model_package_group_policies : k => v.region if v.region != null && length(v.region) > 0 }
}
output "sagemaker_model_package_group_policies_resource_policy" {
  description = "Map of resource_policy values across all sagemaker_model_package_group_policies, keyed the same as var.sagemaker_model_package_group_policies"
  value       = { for k, v in aws_sagemaker_model_package_group_policy.sagemaker_model_package_group_policies : k => v.resource_policy if v.resource_policy != null && length(v.resource_policy) > 0 }
}

