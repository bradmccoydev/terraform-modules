resource "random_id" "default" {
  keepers = {
    azi_id = 1
  }

  byte_length = var.byte_length
}