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