# Hosted zone for awsug.site
module "route53_awsug_zones" {
  source  = "terraform-aws-modules/route53/aws//modules/zones"
  version = "~> 2.0"

  zones = {
    "awsug.site" = {
      comment = "awsug.site"
    }
  }
}
