#resource "google_cloud_run_v2_service" "tfc_cloud_run_service" {
#  name = "${var.project_id}-tfc-cloud-run-service"
#
#  template {
#    containers {
#      image = "gcr.io/cloudrun/hello"
#    }
#    service_account = var.workload_sa_email
#  }
#}
#
#output "tfc_cloud_run_service_url" {
#  value = google_cloud_run_v2_service.tfc_cloud_run_service.uri
#}


resource "google_container_registry" "registry" {
  project  = "${var.project_id}"
  location = "US"
}

resource "google_storage_bucket_iam_member" "objAdmin" {
  #project  = "${var.project_id}"
  bucket = "us.artifacts.hack-team-hack-o-holics.appspot.com"
  role        = "roles/storage.objectAdmin"
  member      = "serviceAccount:infrastructure@hack-team-hack-o-holics.iam.gserviceaccount.com"
}

resource "google_storage_bucket_iam_member" "legacyBucketReader" {
  #project  = "${var.project_id}"
  bucket = "us.artifacts.hack-team-hack-o-holics.appspot.com"
  role        = "roles/storage.legacyBucketReader"
  member      = "serviceAccount:infrastructure@hack-team-hack-o-holics.iam.gserviceaccount.com"
}
