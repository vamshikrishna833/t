
module "log_export" {
  source                 = "./modules/log-export/"

  destination_uri        = var.destination_uri
  filter                 = "severity >= ERROR"
  log_sink_name          = var.log_sink_name
  parent_resource_id     = var.parent_resource_id
  parent_resource_type   = var.parent_resource_type
  unique_writer_identity = true
}

module "destination" {
  source                   = "./modules/pubsub/"
  
  project_id               = var.project_id
  topic_name               = var.topic_name
  log_sink_writer_identity = module.log_export.writer_identity
  create_subscriber        = true
}

module "monitoring" {
  source = "./modules/monitoring/"
  project_name = var.project_name
  filter_group = var.filter_group
  filter_subgroup = var.filter_subgroup
  notification_type = var.notification_type
  display_name = var.display_name
  email_address = var.email_address
  display_name_uptime = var.display_name_uptime
  timeout = var.timeout
  period = var.period
  uptime_http_path = var.uptime_http_path
  uptime_http_port = var.uptime_http_port
  host_ip = var.host_ip
  
}
