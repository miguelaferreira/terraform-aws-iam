# Default policy for all roles
data "aws_iam_policy_document" "default_assume_role" {
  statement {
    effect = "Allow"

    actions = ["sts:AssumeRole"]

    principals {
      type        = "AWS"
      identifiers = var.trusted_role_arns
    }
  }
}

data "aws_iam_policy_document" "default_assume_role_with_mfa" {
  statement {
    effect = "Allow"

    actions = ["sts:AssumeRole"]

    principals {
      type        = "AWS"
      identifiers = var.trusted_role_arns
    }

    condition {
      test     = "Bool"
      variable = "aws:MultiFactorAuthPresent"
      values   = ["true"]
    }

    condition {
      test     = "NumericLessThan"
      variable = "aws:MultiFactorAuthAge"
      values   = [var.mfa_age]
    }
  }
}

# Policy for admin role
data "aws_iam_policy_document" "admin_assume_role" {
  count = length(var.admin_trusted_role_arns) > 0 ? 1 : 0

  statement {
    effect = "Allow"

    actions = ["sts:AssumeRole"]

    principals {
      type        = "AWS"
      identifiers = var.admin_trusted_role_arns
    }
  }
}

data "aws_iam_policy_document" "admin_assume_role_with_mfa" {
  count = length(var.admin_trusted_role_arns) > 0 ? 1 : 0

  statement {
    effect = "Allow"

    actions = ["sts:AssumeRole"]

    principals {
      type        = "AWS"
      identifiers = var.admin_trusted_role_arns
    }

    condition {
      test     = "Bool"
      variable = "aws:MultiFactorAuthPresent"
      values   = ["true"]
    }

    condition {
      test     = "NumericLessThan"
      variable = "aws:MultiFactorAuthAge"
      values   = [var.mfa_age]
    }
  }
}

# Policy for poweruser role
data "aws_iam_policy_document" "poweruser_assume_role" {
  count = length(var.poweruser_trusted_role_arns) > 0 ? 1 : 0

  statement {
    effect = "Allow"

    actions = ["sts:AssumeRole"]

    principals {
      type        = "AWS"
      identifiers = var.poweruser_trusted_role_arns
    }
  }
}

data "aws_iam_policy_document" "poweruser_assume_role_with_mfa" {
  count = length(var.poweruser_trusted_role_arns) > 0 ? 1 : 0

  statement {
    effect = "Allow"

    actions = ["sts:AssumeRole"]

    principals {
      type        = "AWS"
      identifiers = var.poweruser_trusted_role_arns
    }

    condition {
      test     = "Bool"
      variable = "aws:MultiFactorAuthPresent"
      values   = ["true"]
    }

    condition {
      test     = "NumericLessThan"
      variable = "aws:MultiFactorAuthAge"
      values   = [var.mfa_age]
    }
  }
}

# Policy for readonly role
data "aws_iam_policy_document" "readonly_assume_role" {
  count = length(var.readonly_trusted_role_arns) > 0 ? 1 : 0

  statement {
    effect = "Allow"

    actions = ["sts:AssumeRole"]

    principals {
      type        = "AWS"
      identifiers = var.readonly_trusted_role_arns
    }
  }
}

data "aws_iam_policy_document" "readonly_assume_role_with_mfa" {
  count = length(var.readonly_trusted_role_arns) > 0 ? 1 : 0

  statement {
    effect = "Allow"

    actions = ["sts:AssumeRole"]

    principals {
      type        = "AWS"
      identifiers = var.readonly_trusted_role_arns
    }

    condition {
      test     = "Bool"
      variable = "aws:MultiFactorAuthPresent"
      values   = ["true"]
    }

    condition {
      test     = "NumericLessThan"
      variable = "aws:MultiFactorAuthAge"
      values   = [var.mfa_age]
    }
  }
}
