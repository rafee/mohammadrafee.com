resource "aws_route53_record" "tfer--Z3LN06E8TSVTFK_mail-002E-mohammadrafee-002E-com-002E-_CNAME_" {
  name    = "mail.mohammadrafee.com."
  records = ["business.zoho.com."]
  ttl     = "300"
  type    = "CNAME"
  zone_id = aws_route53_zone.tfer--Z3LN06E8TSVTFK_mohammadrafee-002E-com.zone_id
}

resource "aws_route53_record" "tfer--Z3LN06E8TSVTFK_mohammadrafee-002E-com-002E-_MX_" {
  name    = "mohammadrafee.com."
  records = ["10 mx.zoho.com.", "50 mx3.zoho.com.", "20 mx2.zoho.com."]
  ttl     = "300"
  type    = "MX"
  zone_id = aws_route53_zone.tfer--Z3LN06E8TSVTFK_mohammadrafee-002E-com.zone_id
}

resource "aws_route53_record" "tfer--Z3LN06E8TSVTFK_mohammadrafee-002E-com-002E-_TXT_" {
  name    = "mohammadrafee.com."
  records = ["v=spf1 include:zoho.com ~all"]
  ttl     = "300"
  type    = "TXT"
  zone_id = aws_route53_zone.tfer--Z3LN06E8TSVTFK_mohammadrafee-002E-com.zone_id
}

resource "aws_route53_record" "tfer--Z3LN06E8TSVTFK_www-002E-mohammadrafee-002E-com-002E-_CNAME_" {
  name    = "www.mohammadrafee.com."
  records = ["c.storage.googleapis.com."]
  ttl     = "300"
  type    = "CNAME"
  zone_id = aws_route53_zone.tfer--Z3LN06E8TSVTFK_mohammadrafee-002E-com.zone_id
}

resource "aws_route53_record" "tfer--Z3LN06E8TSVTFK_zb04856227-002E-mohammadrafee-002E-com-002E-_CNAME_" {
  name    = "zb04856227.mohammadrafee.com."
  records = ["zmverify.zoho.com."]
  ttl     = "300"
  type    = "CNAME"
  zone_id = aws_route53_zone.tfer--Z3LN06E8TSVTFK_mohammadrafee-002E-com.zone_id
}

resource "aws_route53_record" "tfer--Z3LN06E8TSVTFK_zoho-002E-_domainkey-002E-mohammadrafee-002E-com-002E-_TXT_" {
  name    = "zoho._domainkey.mohammadrafee.com."
  records = ["v=DKIM1; k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCbAsofEBaCLFFQ5ribwDcqXWAkI4qve9tVbzRkE7T6EK3rOyqiWSJdvDF+AAZrKkJUmRXx/1LFNKEm9vvuUqTx8s31j2zJZiCEXL5WpNZKTaEhncSXONhzii9b+6XM2NIwHZQTcSLwPHrcrzeNiCuh6DjJZBzIR+rQH128Of5sOwIDAQAB"]
  ttl     = "300"
  type    = "TXT"
  zone_id = aws_route53_zone.tfer--Z3LN06E8TSVTFK_mohammadrafee-002E-com.zone_id
}

