variable "dc" {
  description = "Name of the datacenter you want to create the vApp."
}

variable "portgroup-name" {
  description = "The name of the Port Group to create"
}

variable "portgroup-vlan" {
  description = "The ID of the VLAN ID to assign to the Port Group, if not provided the default ID is 0"
  default     = "0"
}
