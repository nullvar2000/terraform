variable "vmid" {
  type = number
  default = 0
}

variable "name" {
  type = string
}

variable "desc" {
  type = string
  default = ""
}

variable "pve_target_node" {
  type = string
  default = "harbinger"
}

variable "clone_from" {
  type = string
  default = "debian-10-buster"
}

variable "full_clone" {
  type = bool
  default = true
}

variable "onboot" {
  type = bool
  default = false
}

variable "oncreate" {
  type = bool
  default = true
}

variable "bios" {
  type = string
  default = "seabios"
}

variable "cpus" {
  type = number
  default = 1
}

variable "ram" {
  type = number
  default = 2048
}

variable "scsihw" {
  type = string
  default = "virtio-scsi-pci"
}

variable "bootdisk" {
  type = string
  default = "scsi0"
}

variable "disk_size" {
  type = string
  default = "16G"
}

variable "disk_type" {
  type = string
  default = "virtio"
}

variable "disk_storage" {
  type = string
  default = "local-lvm"
}

variable "disk_ssd" {
  type = number
  default = 1
}

variable "disk_iothread" {
  type = number
  default = 0
}

variable "network_model" {
  type = string
  default = "virtio"
}

variable "network_bridge" {
  type = string
  default = "vmbr0"
}

variable "network_vlab" {
  type = number
  default = -1
}

variable "ip_config" {
  type = string
  default = "ip=dhcp"
}

variable "ssh_key" {
  type = string
}

