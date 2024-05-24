provider "aws" {
  region  = "eu-west-1"
  profile = "tig-awsug"
  default_tags {
    tags = {
      terraform     = "true"
      region        = "eu-west-1"
      business-unit = "awsug"
      stage         = terraform.workspace
      repository    = "https://github.com/tigpt/awsug.site"
    }
  }
}
