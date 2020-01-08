resource "random_string" "random" {
  length = var.rand_length
  special = true
  override_special = "/@£$"
}

variable "rand_length" {
  type = "string"
  default = "8"
}

output "my_first_random_text" {
  value = random_string.random.result
}
