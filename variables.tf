
variable "topic_name" {
  description = "The name of the pubsub topic to be created and used for log entries matching the filter."
  type        = string
}

variable "project_id" {
  description = "The ID of the project in which the pubsub topic will be created."
  type        = string
}

variable "create_subscriber" {
  description = "Whether to create a subscription to the topic that was created and used for log entries matching the filter. If 'true', a pull subscription is created along with a service account that is granted roles/pubsub.subscriber and roles/pubsub.viewer to the topic."
  type        = bool
}

variable "destination_uri" {
  description = "The self_link URI of the destination resource (This is available as an output coming from one of the destination submodules)"
  type        = string
}

variable "log_sink_name" {
  description = "The name of the log sink to be created."
  type        = string
}

variable "parent_resource_id" {
  description = "The ID of the GCP resource in which you create the log sink. If var.parent_resource_type is set to 'project', then this is the Project ID (and etc)."
  type        = string
}

variable "parent_resource_type" {
  description = "The GCP resource in which you create the log sink. The value must not be computed, and must be one of the following: 'project', 'folder', 'billing_account', or 'organization'."
  type        = string
  default     = "project"
}
variable "unique_writer_identity" {
  description = "Whether or not to create a unique identity associated with this sink. If false (the default), then the writer_identity used is serviceAccount:cloud-logs@system.gserviceaccount.com. If true, then a unique service account is created and used for the logging sink."
  type        = bool
}

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


