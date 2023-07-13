resource "google_app_engine_application" "example_tfc_app" {
  project     = var.project_id
  location_id = "europe-west3"
}

resource "google_app_engine_standard_app_version" "example_tfc_app_version" {
  delete_service_on_destroy = true
  project                   = var.project_id
  runtime                   = "python39"
  service                   = "my-tfc-app"
  service_account           = var.workload_sa_email

  deployment {
    zip {
      source_url = "https://storage.googleapis.com/hackathon_shared_storage/app-engine-example.zip"
    }
  }

  entrypoint {
    shell = "python3 ./main.py"
  }
}