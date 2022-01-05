resource "azuread_group_member" "default" {
  group_object_id  = var.group_object_id
  member_object_id = var.member_object_id
}
