variable "nixos_system" {
  type        = string
  description = "The nixos system to deploy"
}

variable "target_host" {
  type        = string
  description = "DNS host to deploy to"
}

variable "target_user" {
  type        = string
  default     = "root"
  description = "User to deploy as"
}

variable "target_port" {
  type        = number
  description = "SSH port used to connect to the target_host"
  default     = 22
}

variable "ssh_private_key" {
  type        = string
  description = "Content of private key used to connect to the target_host. If set to - no key is passed to openssh and ssh will use its own configuration"
  default     = "-"
}

variable "ssh_options" {
  type        = list(string)
  description = "Additional SSH options to use during deploy"
  default     = []
}

variable "ignore_systemd_errors" {
  type        = bool
  description = "Ignore systemd errors happening during deploy"
  default     = false
}

variable "install_bootloader" {
  type        = bool
  description = "Install/re-install the bootloader"
  default     = false
}

variable "substitute_on_destination" {
  type        = bool
  description = "Causes the remote machine to try to substitute missing store paths, which may be faster if the link between the local and remote machines is slower than the link between the remote machine and its substituters (e.g. https://cache.nixos.org)."
  default     = true
}
