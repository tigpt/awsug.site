#Root name server for the public domain.
resource "aws_route53_zone" "awsug_site" {
  name = "awsug.site"
}

module "route53_awsug_zones" {
  source  = "terraform-aws-modules/route53/aws//modules/zones"
  version = "~> 2.0"

  zones = {
    "awsug.site" = {
      comment = "awsug.site"
    }
  }
}

module "route53_awsug_records" {
  source  = "terraform-aws-modules/route53/aws//modules/records"
  version = "~> 2.0"

  zone_name = keys(module.route53_awsug_zones.route53_zone_zone_id)[0]

  records = [
  ]

  depends_on = [module.route53_awsug_zones]
}
