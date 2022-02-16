output "hex" {
  description = "The Generate ID."
  value       = random_id.suffix.hex
}