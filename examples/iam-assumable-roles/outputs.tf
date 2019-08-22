# Admin
output "admin_iam_role_arn" {
  description = "ARN of admin IAM role"
  value       = module.iam_assumable_roles.admin_iam_role_arn
}

output "admin_iam_role_name" {
  description = "Name of admin IAM role"
  value       = module.iam_assumable_roles.admin_iam_role_name
}

output "admin_iam_role_requires_mfa" {
  description = "Whether admin IAM role requires MFA"
  value       = module.iam_assumable_roles.admin_iam_role_requires_mfa
}

output "admin_iam_role_path" {
  description = "Path of admin IAM role"
  value       = module.iam_assumable_roles.admin_iam_role_path
}

output "admin_iam_role_trusted_arns" {
  description = "The ARNs trusted to assume the admin role"
  value       = module.iam_assumable_roles.admin_iam_role_trusted_arns
}

# Admin Custom
output "admin_custom_iam_role_arn" {
  description = "ARN of admin IAM role with custom trusted ARNs"
  value       = module.iam_assumable_roles_custom_trusted_arns.admin_iam_role_arn
}

output "admin_custom_iam_role_name" {
  description = "Name of admin IAM role with custom trusted ARNs"
  value       = module.iam_assumable_roles_custom_trusted_arns.admin_iam_role_name
}

output "admin_custom_iam_role_requires_mfa" {
  description = "Whether admin IAM role requires MFA with custom trusted ARNs"
  value       = module.iam_assumable_roles_custom_trusted_arns.admin_iam_role_requires_mfa
}

output "admin_custom_iam_role_path" {
  description = "Path of admin IAM role with custom trusted ARNs"
  value       = module.iam_assumable_roles_custom_trusted_arns.admin_iam_role_path
}

output "admin_custom_iam_role_trusted_arns" {
  description = "The ARNs trusted to assume the admin role with custom trusted ARNs"
  value       = module.iam_assumable_roles_custom_trusted_arns.admin_iam_role_trusted_arns
}

# Poweruser
output "poweruser_iam_role_arn" {
  description = "ARN of poweruser IAM role"
  value       = module.iam_assumable_roles.poweruser_iam_role_arn
}

output "poweruser_iam_role_name" {
  description = "Name of poweruser IAM role"
  value       = module.iam_assumable_roles.poweruser_iam_role_name
}

output "poweruser_iam_role_requires_mfa" {
  description = "Whether poweruser IAM role requires MFA"
  value       = module.iam_assumable_roles.poweruser_iam_role_requires_mfa
}

output "poweruser_iam_role_path" {
  description = "Path of poweruser IAM role"
  value       = module.iam_assumable_roles.poweruser_iam_role_path
}

output "poweruser_iam_role_trusted_arns" {
  description = "The ARNs trusted to assume the poweruser role"
  value       = module.iam_assumable_roles.poweruser_iam_role_trusted_arns
}

# Poweruser Custom
output "poweruser_custom_iam_role_arn" {
  description = "ARN of poweruser IAM role with custom trusted ARNs"
  value       = module.iam_assumable_roles_custom_trusted_arns.poweruser_iam_role_arn
}

output "poweruser_custom_iam_role_name" {
  description = "Name of poweruser IAM role with custom trusted ARNs"
  value       = module.iam_assumable_roles_custom_trusted_arns.poweruser_iam_role_name
}

output "poweruser_custom_iam_role_requires_mfa" {
  description = "Whether poweruser IAM role requires MFA with custom trusted ARNs"
  value       = module.iam_assumable_roles_custom_trusted_arns.poweruser_iam_role_requires_mfa
}

output "poweruser_custom_iam_role_path" {
  description = "Path of poweruser IAM role with custom trusted ARNs"
  value       = module.iam_assumable_roles_custom_trusted_arns.poweruser_iam_role_path
}

output "poweruser_custom_iam_role_trusted_arns" {
  description = "The ARNs trusted to assume the poweruser role with custom trusted ARNs"
  value       = module.iam_assumable_roles_custom_trusted_arns.poweruser_iam_role_trusted_arns
}

# Readonly
output "readonly_iam_role_arn" {
  description = "ARN of readonly IAM role"
  value       = module.iam_assumable_roles.readonly_iam_role_arn
}

output "readonly_iam_role_name" {
  description = "Name of readonly IAM role"
  value       = module.iam_assumable_roles.readonly_iam_role_name
}

output "readonly_iam_role_path" {
  description = "Path of readonly IAM role"
  value       = module.iam_assumable_roles.readonly_iam_role_path
}

output "readonly_iam_role_requires_mfa" {
  description = "Whether readonly IAM role requires MFA"
  value       = module.iam_assumable_roles.readonly_iam_role_requires_mfa
}

output "readonly_iam_role_trusted_arns" {
  description = "The ARNs trusted to assume the readonly role"
  value       = module.iam_assumable_roles.readonly_iam_role_trusted_arns
}

# Readonly Custom
output "readonly_custom_iam_role_arn" {
  description = "ARN of readonly IAM role with custom trusted ARNs"
  value       = module.iam_assumable_roles_custom_trusted_arns.readonly_iam_role_arn
}

output "readonly_custom_iam_role_name" {
  description = "Name of readonly IAM role with custom trusted ARNs"
  value       = module.iam_assumable_roles_custom_trusted_arns.readonly_iam_role_name
}

output "readonly_custom_iam_role_path" {
  description = "Path of readonly IAM role with custom trusted ARNs"
  value       = module.iam_assumable_roles_custom_trusted_arns.readonly_iam_role_path
}

output "readonly_custom_iam_role_requires_mfa" {
  description = "Whether readonly IAM role requires MFA with custom trusted ARNs"
  value       = module.iam_assumable_roles_custom_trusted_arns.readonly_iam_role_requires_mfa
}

output "readonly_custom_iam_role_trusted_arns" {
  description = "The ARNs trusted to assume the readonly role with custom trusted ARNs"
  value       = module.iam_assumable_roles_custom_trusted_arns.readonly_iam_role_trusted_arns
}
