resource "google_monitoring_group" "project_parent" {
  display_name = var.project_name
  filter = var.filter_group
}

resource "google_monitoring_group" "project_subgroup" {
  display_name = "${var.project_name}-env"
  filter = var.filter_subgroup
  parent_name = google_monitoring_group.project_parent.name
}
