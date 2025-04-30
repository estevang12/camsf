//main.tf
// Incluye servicios básicos + Cloud Messaging + IAM.
provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_project_service" "required_services" {
  for_each = toset([
    "firebase.googleapis.com",
    "firestore.googleapis.com",
    "cloudmessaging.googleapis.com",
    "cloudfunctions.googleapis.com",
    "iam.googleapis.com"
  ])
  service = each.key
}

resource "google_firebase_project" "default" {
  project           = var.project_id
  analytics_region  = var.region
}

resource "google_firestore_database" "default" {
  name     = "(default)"
  project  = var.project_id
  location = var.region
  type     = "NATIVE"
}

resource "google_project_iam_member" "cloud_function_invoker" {
  project = var.project_id
  role    = "roles/cloudfunctions.invoker"
  member  = "allUsers"
}
