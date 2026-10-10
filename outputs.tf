output "iam_organizations_features_id" {
  description = "Map of id values across all iam_organizations_features, keyed the same as var.iam_organizations_features"
  value       = { for k, v in aws_iam_organizations_features.iam_organizations_features : k => v.id if v.id != null && length(v.id) > 0 }
}
output "iam_organizations_features_enabled_features" {
  description = "Map of enabled_features values across all iam_organizations_features, keyed the same as var.iam_organizations_features"
  value       = { for k, v in aws_iam_organizations_features.iam_organizations_features : k => v.enabled_features if v.enabled_features != null && length(v.enabled_features) > 0 }
}

