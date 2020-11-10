variable "az" {
  description = "AWS AZ to use"
}

variable "blueprint" {
  description = "Blueprint of the software to install"
}

variable "bundle_id" {
  description = "Bundle ID to use when creating the instance"
}

variable "key_file_path" {
  description = "Path to a public key to import"
}

variable "name" {
  description = "AWS Instance Name"
}

variable "region" {
  description = "Region to Launch the Instance into"
}
