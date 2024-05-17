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

provider "aws" {
  profile = "tig-awsug"
  alias   = "us-east-1"
  region  = "us-east-1"
  default_tags {
    tags = {
      terraform     = "true"
      region        = "us-east-1"
      business-unit = "awsug"
      stage         = terraform.workspace
      repository    = "https://github.com/tigpt/awsug.site"
    }
  }
}
