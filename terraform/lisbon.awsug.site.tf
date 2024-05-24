module "route53_awsug_records_lisbon" {
  source  = "terraform-aws-modules/route53/aws//modules/records"
  version = "~> 2.0"

  zone_name = keys(module.route53_awsug_zones.route53_zone_zone_id)[0]

  records = [
    {
      name = "lisbon"
      type = "NS"
      ttl  = 172800
      records = [
        "ns-269.awsdns-33.com.",
        "ns-1702.awsdns-20.co.uk.",
        "ns-1393.awsdns-46.org.",
        "ns-595.awsdns-10.net."
      ]
    }
  ]
  depends_on = [module.route53_awsug_zones]
}
