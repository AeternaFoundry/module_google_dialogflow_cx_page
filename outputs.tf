output "dialogflow_cx_pages_id" {
  description = "Map of id values across all dialogflow_cx_pages, keyed the same as var.dialogflow_cx_pages except keys with no id are omitted"
  value       = { for k, v in google_dialogflow_cx_page.dialogflow_cx_pages : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dialogflow_cx_pages_advanced_settings" {
  description = "Map of advanced_settings values across all dialogflow_cx_pages, keyed the same as var.dialogflow_cx_pages except keys with no advanced_settings are omitted"
  value       = { for k, v in google_dialogflow_cx_page.dialogflow_cx_pages : k => one(v.advanced_settings) if v.advanced_settings != null && length(v.advanced_settings) > 0 }
}
output "dialogflow_cx_pages_deletion_policy" {
  description = "Map of deletion_policy values across all dialogflow_cx_pages, keyed the same as var.dialogflow_cx_pages except keys with no deletion_policy are omitted"
  value       = { for k, v in google_dialogflow_cx_page.dialogflow_cx_pages : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "dialogflow_cx_pages_display_name" {
  description = "Map of display_name values across all dialogflow_cx_pages, keyed the same as var.dialogflow_cx_pages except keys with no display_name are omitted"
  value       = { for k, v in google_dialogflow_cx_page.dialogflow_cx_pages : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "dialogflow_cx_pages_entry_fulfillment" {
  description = "Map of entry_fulfillment values across all dialogflow_cx_pages, keyed the same as var.dialogflow_cx_pages except keys with no entry_fulfillment are omitted"
  value       = { for k, v in google_dialogflow_cx_page.dialogflow_cx_pages : k => one(v.entry_fulfillment) if v.entry_fulfillment != null && length(v.entry_fulfillment) > 0 }
}
output "dialogflow_cx_pages_event_handlers" {
  description = "Map of event_handlers values across all dialogflow_cx_pages, keyed the same as var.dialogflow_cx_pages except keys with no event_handlers are omitted"
  value       = { for k, v in google_dialogflow_cx_page.dialogflow_cx_pages : k => v.event_handlers if v.event_handlers != null && length(v.event_handlers) > 0 }
}
output "dialogflow_cx_pages_form" {
  description = "Map of form values across all dialogflow_cx_pages, keyed the same as var.dialogflow_cx_pages except keys with no form are omitted"
  value       = { for k, v in google_dialogflow_cx_page.dialogflow_cx_pages : k => one(v.form) if v.form != null && length(v.form) > 0 }
}
output "dialogflow_cx_pages_knowledge_connector_settings" {
  description = "Map of knowledge_connector_settings values across all dialogflow_cx_pages, keyed the same as var.dialogflow_cx_pages except keys with no knowledge_connector_settings are omitted"
  value       = { for k, v in google_dialogflow_cx_page.dialogflow_cx_pages : k => one(v.knowledge_connector_settings) if v.knowledge_connector_settings != null && length(v.knowledge_connector_settings) > 0 }
}
output "dialogflow_cx_pages_language_code" {
  description = "Map of language_code values across all dialogflow_cx_pages, keyed the same as var.dialogflow_cx_pages except keys with no language_code are omitted"
  value       = { for k, v in google_dialogflow_cx_page.dialogflow_cx_pages : k => v.language_code if v.language_code != null && length(v.language_code) > 0 }
}
output "dialogflow_cx_pages_name" {
  description = "Map of name values across all dialogflow_cx_pages, keyed the same as var.dialogflow_cx_pages except keys with no name are omitted"
  value       = { for k, v in google_dialogflow_cx_page.dialogflow_cx_pages : k => v.name if v.name != null && length(v.name) > 0 }
}
output "dialogflow_cx_pages_parent" {
  description = "Map of parent values across all dialogflow_cx_pages, keyed the same as var.dialogflow_cx_pages except keys with no parent are omitted"
  value       = { for k, v in google_dialogflow_cx_page.dialogflow_cx_pages : k => v.parent if v.parent != null && length(v.parent) > 0 }
}
output "dialogflow_cx_pages_transition_route_groups" {
  description = "Map of transition_route_groups values across all dialogflow_cx_pages, keyed the same as var.dialogflow_cx_pages except keys with no transition_route_groups are omitted"
  value       = { for k, v in google_dialogflow_cx_page.dialogflow_cx_pages : k => v.transition_route_groups if v.transition_route_groups != null && length(v.transition_route_groups) > 0 }
}
output "dialogflow_cx_pages_transition_routes" {
  description = "Map of transition_routes values across all dialogflow_cx_pages, keyed the same as var.dialogflow_cx_pages except keys with no transition_routes are omitted"
  value       = { for k, v in google_dialogflow_cx_page.dialogflow_cx_pages : k => v.transition_routes if v.transition_routes != null && length(v.transition_routes) > 0 }
}

