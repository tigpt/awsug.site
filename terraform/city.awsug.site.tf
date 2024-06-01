module "route53_awsug_records" {
  source   = "terraform-aws-modules/route53/aws//modules/records"
  version  = "~> 2.0"
  for_each = local.usergroup

  zone_name = "awsug.site"

  records = [
    {
      name    = each.key
      type    = "NS"
      ttl     = 172800
      records = each.value.nameservers
    }
  ]
}
