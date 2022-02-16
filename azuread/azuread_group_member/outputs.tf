output "group_object_id" {
  value       = azuread_group_member.default.group_object_id
  description = "The object ID of the group."
}

output "member_object_id" {
  value       = azuread_group_member.default.member_object_id
  description = "The Member ID of the group."
}
