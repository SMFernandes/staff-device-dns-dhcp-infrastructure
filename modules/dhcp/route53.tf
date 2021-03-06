resource "aws_route53_record" "dhcp_db" {
  zone_id = var.vpn_hosted_zone_id
  ttl     = 3600
  type    = "CNAME"

  name    = "dhcp-dns-admin-dhcp-db${var.admin_local_development_domain_affix}"
  records = [aws_db_instance.dhcp_server_db.address]
}
