provider "aws" {
  region = "eu-west-1"
}

############################################
# IAM assumable roles with same trusted ARNs
############################################
module "iam_assumable_roles" {
  source = "../../modules/iam-assumable-roles"

  trusted_role_arns = [
    "arn:aws:iam::307990089504:root",
    "arn:aws:iam::835367859851:user/anton",
  ]

  create_admin_role = true

  create_poweruser_role      = true
  poweruser_role_name        = "Billing-And-Support-Access"
  poweruser_role_policy_arns = [
    "arn:aws:iam::aws:policy/job-function/Billing",
    "arn:aws:iam::aws:policy/AWSSupportAccess"]

  create_readonly_role       = true
  readonly_role_requires_mfa = false
}

#################################################
# IAM assumable roles with different trusted ARNs
#################################################
module "iam_assumable_roles_custom_trusted_arns" {
  source = "../../modules/iam-assumable-roles"

  trusted_role_arns = [
    "arn:aws:iam::307990089504:root",
    "arn:aws:iam::835367859851:user/anton",
  ]

  create_admin_role       = true
  admin_role_name         = "admin-custom"
  admin_trusted_role_arns = ["arn:aws:iam::307990089504:root"]

  create_poweruser_role       = true
  poweruser_role_name         = "developer"
  poweruser_trusted_role_arns = ["arn:aws:iam::835367859851:user/anton"]

  create_readonly_role       = true
  readonly_role_name         = "readonly-custom"
  readonly_role_requires_mfa = false
}
