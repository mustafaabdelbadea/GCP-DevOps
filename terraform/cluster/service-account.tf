resource "google_service_account" "kubernetes" {
  account_id = var.service_account_id
}