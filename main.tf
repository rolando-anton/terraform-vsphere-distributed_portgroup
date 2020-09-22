data "vsphere_datacenter" "dc" {
  name = var.dc
}

data "vsphere_distributed_virtual_switch" "vswitch" {
  datacenter_id = data.vsphere_datacenter.dc.id
  name          = var.vswitch
}

data "vsphere_network" "management" {
  datacenter_id = data.vsphere_datacenter.dc.id
  name          = var.management-network
}
resource "vsphere_distributed_port_group" "portgroup" {
  name                            = var.portgroup-name
  distributed_virtual_switch_uuid = data.vsphere_distributed_virtual_switch.vswitch.id
  vlan_id                         = var.portgroup-vlan
}
