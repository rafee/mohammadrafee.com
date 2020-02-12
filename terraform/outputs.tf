output "aws_route53_record_cname_mail_id" {
  value = aws_route53_record.cname_mail.id
}

output "aws_route53_record_mx_domain_id" {
  value = aws_route53_record.mx_domain.id
}

output "aws_route53_record_domain_spf_id" {
  value = aws_route53_record.domain_spf.id
}

output "aws_route53_record_root_id" {
  value = aws_route53_record.root.id
}

output "aws_route53_record_www_id" {
  value = aws_route53_record.www.id
}

output "aws_route53_record_zoho_verify_id" {
  value = aws_route53_record.zoho_verify.id
}

output "aws_route53_record_zoho_domainkey_id" {
  value = aws_route53_record.zoho_domainkey.id
}

output "aws_route53_zone_domain_zone_id" {
  value = aws_route53_zone.domain_zone.id
}

