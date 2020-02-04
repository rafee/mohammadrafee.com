resource "aws_route53_zone" "domain_zone" {
  comment = "Personal Website for Rafee"

  // Forcefully removes the hosted zone
  force_destroy = "false"
  name          = "mohammadrafee.com."
}

