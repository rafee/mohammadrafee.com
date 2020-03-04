terraform {
  backend "s3" {
    bucket = "terraform-state-rafee"
    key    = "infra/mohammadrafee.com"
    region = "ca-central-1"
  }
}

