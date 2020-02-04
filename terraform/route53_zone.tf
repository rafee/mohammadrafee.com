resource "aws_route53_zone" "tfer--Z3LN06E8TSVTFK_mohammadrafee-002E-com" {
  comment = "Personal Website for Rafee"

  // Forcefully removes the hosted zone
  force_destroy = "false"
  name          = "mohammadrafee.com."
}

