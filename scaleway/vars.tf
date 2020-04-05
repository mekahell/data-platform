variable "scw_zone" {
  default = "fr-par-1"
}

variable "scw_region" {
  default = "fr-par"
}

variable "scw_image_uuid" {
  description = "Debian Buster image UUID"
  default     = "cc9188b3-3938-47d7-b091-c9ecad1fe507"
}

variable "allow_public_ip" {
  default = "88.126.0.13"
}
