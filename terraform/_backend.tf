terraform {
  backend "s3" {
    region         = "eu-west-1"
    bucket         = "tf-awsug-9271-state"
    key            = "awsug.tfstate"
    dynamodb_table = "tf-awsug-9271-locktable"
    encrypt        = true
    profile        = "tig-awsug"
  }
}
