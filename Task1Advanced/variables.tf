variable "env" {
  type = string
}

variable "cores" {
  type    = number
  default = 1
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
