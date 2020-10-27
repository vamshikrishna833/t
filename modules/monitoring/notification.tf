locals {
  is_email = var.notification_type == "email"
  is_slack  = var.notification_type == "slack"
}


resource "google_monitoring_notification_channel" "email" {
  count        = local.is_email ? 1 : 0
  display_name = var.display_name
  type         = var.notification_type
  labels = {
    email_address = var.email_address
  }
}

resource "google_monitoring_notification_channel" "slack" {
  count        = local.is_slack ? 1 : 0
  display_name = var.display_name
  type         = var.notification_type
  labels = {
    auth_token = var.auth_token
    channel_name = var.channel_name
  }
}