terraform {
  required_providers {
    google = {
      source = "hashicorp/google-beta"
      version = "3.70.0"
    }
  }
}
provider "google" {
  project = "${var.project_id}"
  region  = "${var.region}"
}

resource "google_cloud_run_service" "default" {
  name     = "${var.service_name}"
  location = "${var.region}"

  template {
    spec {
      containers {
        image = "${var.docker_image}"
        ports {
          container_port = var.port
         }  
        env {
          name = "EDITOR_UPSTREAM_RENDER_URL"
          value = "${var.renderer_svc_url}"
        }
      }
      service_account_name = "${var.cloudrun_sa}"
    }
  }
}

data "google_iam_policy" "noauth" {
  binding {
    role = "roles/run.invoker"
    members = [
      "${var.invoker_member}"
    ]
  }
}

resource "google_cloud_run_service_iam_policy" "noauth" {
  location    = google_cloud_run_service.default.location
  project     = google_cloud_run_service.default.project
  service     = google_cloud_run_service.default.name

  policy_data = data.google_iam_policy.noauth.policy_data
}
