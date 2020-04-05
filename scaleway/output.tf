output "ip_address" {
  value = "${scaleway_instance_ip.bastion_ip.address}"
}
