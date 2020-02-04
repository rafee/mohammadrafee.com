resource "aws_route53_record" "cname_mail" {
  name    = "mail.mohammadrafee.com."
  records = ["business.zoho.com."]
  ttl     = "300"
  type    = "CNAME"
  zone_id = aws_route53_zone.domain_zone.zone_id
}

resource "aws_route53_record" "mx_domain" {
  name    = "mohammadrafee.com."
  records = ["10 mx.zoho.com.", "50 mx3.zoho.com.", "20 mx2.zoho.com."]
  ttl     = "300"
  type    = "MX"
  zone_id = aws_route53_zone.domain_zone.zone_id
}

resource "aws_route53_record" "domain_spf" {
  name    = "mohammadrafee.com."
  records = ["v=spf1 include:zoho.com ~all"]
  ttl     = "300"
  type    = "TXT"
  zone_id = aws_route53_zone.domain_zone.zone_id
}

resource "aws_route53_record" "www" {
  name    = "www.mohammadrafee.com."
  records = ["c.storage.googleapis.com."]
  ttl     = "300"
  type    = "CNAME"
  zone_id = aws_route53_zone.domain_zone.zone_id
}

resource "aws_route53_record" "zoho_verify" {
  name    = "zb04856227.mohammadrafee.com."
  records = ["zmverify.zoho.com."]
  ttl     = "300"
  type    = "CNAME"
  zone_id = aws_route53_zone.domain_zone.zone_id
}

resource "aws_route53_record" "zoho_domainkey" {
  name    = "zoho._domainkey.mohammadrafee.com."
  records = ["v=DKIM1; k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCbAsofEBaCLFFQ5ribwDcqXWAkI4qve9tVbzRkE7T6EK3rOyqiWSJdvDF+AAZrKkJUmRXx/1LFNKEm9vvuUqTx8s31j2zJZiCEXL5WpNZKTaEhncSXONhzii9b+6XM2NIwHZQTcSLwPHrcrzeNiCuh6DjJZBzIR+rQH128Of5sOwIDAQAB"]
  ttl     = "300"
  type    = "TXT"
  zone_id = aws_route53_zone.domain_zone.zone_id
}

