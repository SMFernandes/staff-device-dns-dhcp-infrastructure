variable "prefix" {
  type = string
}

variable "subnets" {
  type = list(string)
}

variable "env" {
  type = string
}

variable "tags" {
  type = map(string)
}

variable "vpc_id" {
  type = string
}

variable "vpc_cidr" {
  type = string
}

variable "dhcp_db_username" {
  type = string
}

variable "dhcp_db_password" {
  type = string
}

variable "public_subnet_cidr_blocks" {
  type = list(string)
}

variable "dhcp_transit_gateway_id" {
  type = string
}

variable "enable_dhcp_transit_gateway_attachment" {
  type = bool
}

variable "transit_gateway_route_table_id" {
  type = string
}

variable "service_ip" {
  type = string
}

variable "critical_notifications_arn" {
  type = string
}

variable "vpn_hosted_zone_id" {
  type = string
}

variable "vpn_hosted_zone_domain" {
  type = string
}

variable "short_prefix" {
  type = string
}

variable "region" {
  type = string
}

variable "is_publicly_accessible" {
  type = bool
}

variable "admin_local_development_domain_affix" {
  type = string
}

variable "service_api_ip" {
  type = string
}
