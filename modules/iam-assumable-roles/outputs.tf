locals{
  admin_iam_role_arn = join("", aws_iam_role.admin.*.arn)
  admin_iam_role_name = join("", aws_iam_role.admin.*.name)
  admin_iam_role_path = join("", aws_iam_role.admin.*.path)

  poweruser_iam_role_arn = join("", aws_iam_role.poweruser.*.arn)
  poweruser_iam_role_name = join("", aws_iam_role.poweruser.*.name)
  poweruser_iam_role_path = join("", aws_iam_role.poweruser.*.path)

  readonly_iam_role_arn = join("", aws_iam_role.readonly.*.arn)
  readonly_iam_role_name = join("", aws_iam_role.readonly.*.name)
  readonly_iam_role_path = join("", aws_iam_role.readonly.*.path)
}
#Admin
output "admin_iam_role_arn" {
  description = "ARN of admin IAM role"
  value       = local.admin_iam_role_arn
}

output "admin_iam_role_name" {
  description = "Name of admin IAM role"
  value       = local.admin_iam_role_name
}

output "admin_iam_role_path" {
  description = "Path of admin IAM role"
  value       = local.admin_iam_role_path
}

output "admin_iam_role_requires_mfa" {
  description = "Whether admin IAM role requires MFA"
  value       = var.admin_role_requires_mfa
}

output "admin_iam_role_trusted_arns" {
  description = "The ARNs trusted to assume the admin role"
  value       = length(var.admin_trusted_role_arns) > 0 ? var.admin_trusted_role_arns : var.trusted_role_arns
}

output "admin_iam_role_trusted_services" {
  description = "The Services trusted to assume the admin role"
  value       = var.use_custom_admin_role_trust ? var.admin_trusted_role_services : var.trusted_role_services
}

# Poweruser
output "poweruser_iam_role_arn" {
  description = "ARN of poweruser IAM role"
  value       = local.poweruser_iam_role_arn
}

output "poweruser_iam_role_name" {
  description = "Name of poweruser IAM role"
  value       = local.poweruser_iam_role_name
}

output "poweruser_iam_role_path" {
  description = "Path of poweruser IAM role"
  value       = local.poweruser_iam_role_path
}

output "poweruser_iam_role_requires_mfa" {
  description = "Whether poweruser IAM role requires MFA"
  value       = var.poweruser_role_requires_mfa
}

output "poweruser_iam_role_trusted_arns" {
  description = "The ARNs trusted to assume the poweruser role"
  value       = length(var.poweruser_trusted_role_arns) > 0 ? var.poweruser_trusted_role_arns : var.trusted_role_arns
}

output "poweruser_iam_role_trusted_services" {
  description = "The Services trusted to assume the poweruser role"
  value       = var.use_custom_poweruser_role_trust ? var.poweruser_trusted_role_services : var.trusted_role_services
}

# Readonly
output "readonly_iam_role_arn" {
  description = "ARN of readonly IAM role"
  value       = local.readonly_iam_role_arn
}

output "readonly_iam_role_name" {
  description = "Name of readonly IAM role"
  value       = local.readonly_iam_role_name
}

output "readonly_iam_role_path" {
  description = "Path of readonly IAM role"
  value       = local.readonly_iam_role_path
}

output "readonly_iam_role_requires_mfa" {
  description = "Whether readonly IAM role requires MFA"
  value       = var.readonly_role_requires_mfa
}

output "readonly_iam_role_trusted_arns" {
  description = "The ARNs trusted to assume the readonly role"
  value       = var.use_custom_readonly_role_trust ? var.readonly_trusted_role_arns : var.trusted_role_arns
}

output "readonly_iam_role_trusted_services" {
  description = "The Services trusted to assume the readonly role"
  value       = var.use_custom_readonly_role_trust ? var.readonly_trusted_role_services : var.trusted_role_services
}

# All roles
output "role_arns" {
  value = {
    admin     = local.admin_iam_role_arn
    poweruser = local.poweruser_iam_role_arn
    readonly  = local.readonly_iam_role_arn
  }
}
