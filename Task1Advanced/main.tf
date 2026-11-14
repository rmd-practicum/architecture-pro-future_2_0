terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
}

provider "yandex" {
  zone = var.zone
}

module "vm" {
  source         = "./modules/vm"
  zone           = var.zone
  vmname         = "${var.env}-vm"
  core_fraction  = var.core_fraction
  cores          = var.cores
  memory         = var.memory
  disk_size      = var.disk_size
  subnet_id      = var.subnet_id
  ssh_public_key = var.ssh_public_key
}
