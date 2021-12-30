variable "key_vault_id" {
  type        = string
  description = "Key Vault ID."
}

variable "tenant_id" {
  type        = string
  description = "Tenant ID."
}

variable "object_id" {
  type        = string
  description = "Object ID of resource to be granted access to KV."
}

variable "secret_permissions" {
  type        = list(string)
  description = "List of secret permissions, must be one or more from the following: [Backup, Delete, get, list, purge, recover, restore, set]"
  default     = []
}

variable "key_permissions" {
  type        = list(string)
  description = "List of key permissions, must be one or more from the following: [Backup, Create, Decrypt, Delete, Encrypt, Get, Import, List, Purge, Recover, Restore, Sign, UnwrapKey, Update, Verify, WrapKey]"
  default     = []
}

variable "certificate_permissions" {
  type        = list(string)
  description = "List of certificate permissions, must be one or more from the following: [Backup, Create, Delete, DeleteIssuers, Get, GetIssuers, Import, List, ListIssuers, ManageContacts, ManageIssuers, Purge, Recover, Restore, SetIssuers, Update]"
  default     = []
}
