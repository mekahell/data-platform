provider "scaleway" {
  zone   = "${var.scw_zone}"
  region = "${var.scw_region}"
}

resource "scaleway_instance_ip" "bastion_ip" { }

resource "scaleway_instance_security_group" "bastion" {
  name = "sg-bastion"

  inbound_default_policy  = "drop"
  outbound_default_policy = "accept"

  inbound_rule {
    action = "accept"
    port   = "22"
    ip     = "${var.allow_public_ip}"
  }
}

resource "scaleway_instance_server" "bastion" {
  name  = "bastion"
  type  = "DEV1-S"
  image = "${var.scw_image_uuid}"
  tags  = ["bastion"]

  security_group_id = "${scaleway_instance_security_group.bastion.id}"

  ip_id = "${scaleway_instance_ip.bastion_ip.id}"
}
