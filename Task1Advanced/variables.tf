variable "zone" {
  type    = string
  default = "ru-central1-a"
}

variable "env" {
  type = string
}

variable "core_fraction" {
  type = number
}

variable "cores" {
  type    = number
  default = 2
}

variable "memory" {
  type    = number
  default = 1
}

variable "disk_size" {
  type    = number
  default = 15
}

variable "subnet_id" {
  type = string
}

variable "ssh_public_key" {
  type = string
}
