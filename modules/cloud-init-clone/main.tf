resource "proxmox_vm_qemu" "proxmox_vm" {
  vmid              = var.vmid
  name              = var.name
  desc              = var.desc
  target_node       = var.pve_target_node
  clone             = var.clone_from
  full_clone        = var.full_clone
  os_type           = "cloud-init"
  onboot            = var.onboot
  #oncreate          = var.oncreate
  bios              = var.bios
  cores             = var.cpus
  sockets           = 1
  cpu               = "host"
  memory            = var.ram
  scsihw            = var.scsihw
  bootdisk          = var.bootdisk
  agent             = 1
  disk {
    size            = var.disk_size
    type            = var.disk_type
    storage         = var.disk_storage
    ssd             = var.disk_ssd
    iothread        = var.disk_iothread
  }
  network {
    model           = var.network_model
    bridge          = var.network_bridge
    tag             = var.network_vlab
  }
  lifecycle {
    ignore_changes  = [
      network,
    ]
  }

  # Cloud Init Settings (Change the IP range and the GW to suit your needs)
  ipconfig0         = var.ip_config
  sshkeys           = <<EOF
${var.ssh_key}
EOF
}
