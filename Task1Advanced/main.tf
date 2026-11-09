terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
}

provider "yandex" {
  zone = "ru-central1-a"
}

module "vm" {
  source         = "./modules/vm"
  vmname         = "${var.env}-vm"
  cores          = var.cores
  memory         = var.memory
  disk_size      = var.disk_size
  subnet_id      = var.subnet_id
  ssh_public_key = var.ssh_public_key
}
