resource "google_monitoring_uptime_check_config" "http" {
  display_name = var.display_name_uptime
  timeout = var.timeout
  period = var.period

  http_check {
    path = var.uptime_http_path
    port = var.uptime_http_port
  }

  monitored_resource {
    type = "uptime_url"
    labels = {
      host = var.host_ip
    }
  }
}