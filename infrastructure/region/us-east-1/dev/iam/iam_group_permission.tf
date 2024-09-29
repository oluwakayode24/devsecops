module "rosi" {
  source = "../../../../..//modules/iam"

  group_name         = "rosi"
  policy_name        = "rosi-permission"
  policy_description = "this is a limited permission for rosi users"
  managed_policies_to_attach = [
    "arn:aws:iam::aws:policy/AmazonS3FullAccess",
    "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
  ]
  inline_policies_to_attach = data.aws_iam_policy_document.rosi_permission.json
}


data "aws_iam_policy_document" "rosi_permission" {
  statement {
    sid = "1"

    actions = [
      "kms:Encrypt"
    ]
    resources = [
      "*",
    ]
  }
}