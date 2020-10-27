variable "project_name" {
  description = "The name of the Group Project to be created ."
  type        = string
}

variable "filter_subgroup" {
  description = "The filter required for subgroup."
  type        = string
}

variable "notification_type" {
  description = "Notification type for Monitoring Alerts. (email/slack/etc)"
  type        = string
}

variable "display_name" {
  description = "The Display namefor Mornitoring notification channel"
  type        = string
}

variable "email_address" {
  description = "email address ifnotification type is email"
  type        = string
}

variable "auth_token" {
  description = "Authentication token for slack channel notification"
  type        = string
}

variable "channel_name" {
  description = "Slack channel name for notification."
  type        = string
}

variable "display_name_uptime" {
  description = "Display name for uptime."
  type        = string
}

variable "timeout" {
  description = "Timeout value for uptime check."
  type        = string
}

variable "period" {
  description = "time period for uptime check."
  type        = string
}

variable "uptime_http_path" {
  description = "Uptime HTTP path."
  type        = string
}

variable "uptime_http_port" {
  description = "Uptime HTTP port."
  type        = string
}

variable "host_ip" {
  description = "IP address for Host machine for uptime check."
  type        = string
}

