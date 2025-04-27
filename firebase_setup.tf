provider "google" {
  project = "camsf-demo"
  region  = "us-central1"
}

resource "google_firestore_database" "default" {
  name     = "(default)"
  location_id = "us-central1"
  type = "NATIVE"
}
