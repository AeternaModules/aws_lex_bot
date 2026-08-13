output "lex_bots_id" {
  description = "Map of id values across all lex_bots, keyed the same as var.lex_bots"
  value       = { for k, v in aws_lex_bot.lex_bots : k => v.id if v.id != null && length(v.id) > 0 }
}
output "lex_bots_abort_statement" {
  description = "Map of abort_statement values across all lex_bots, keyed the same as var.lex_bots"
  value       = { for k, v in aws_lex_bot.lex_bots : k => v.abort_statement if v.abort_statement != null && length(v.abort_statement) > 0 }
}
output "lex_bots_arn" {
  description = "Map of arn values across all lex_bots, keyed the same as var.lex_bots"
  value       = { for k, v in aws_lex_bot.lex_bots : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "lex_bots_checksum" {
  description = "Map of checksum values across all lex_bots, keyed the same as var.lex_bots"
  value       = { for k, v in aws_lex_bot.lex_bots : k => v.checksum if v.checksum != null && length(v.checksum) > 0 }
}
output "lex_bots_child_directed" {
  description = "Map of child_directed values across all lex_bots, keyed the same as var.lex_bots"
  value       = { for k, v in aws_lex_bot.lex_bots : k => v.child_directed if v.child_directed != null }
}
output "lex_bots_clarification_prompt" {
  description = "Map of clarification_prompt values across all lex_bots, keyed the same as var.lex_bots"
  value       = { for k, v in aws_lex_bot.lex_bots : k => v.clarification_prompt if v.clarification_prompt != null && length(v.clarification_prompt) > 0 }
}
output "lex_bots_create_version" {
  description = "Map of create_version values across all lex_bots, keyed the same as var.lex_bots"
  value       = { for k, v in aws_lex_bot.lex_bots : k => v.create_version if v.create_version != null }
}
output "lex_bots_created_date" {
  description = "Map of created_date values across all lex_bots, keyed the same as var.lex_bots"
  value       = { for k, v in aws_lex_bot.lex_bots : k => v.created_date if v.created_date != null && length(v.created_date) > 0 }
}
output "lex_bots_description" {
  description = "Map of description values across all lex_bots, keyed the same as var.lex_bots"
  value       = { for k, v in aws_lex_bot.lex_bots : k => v.description if v.description != null && length(v.description) > 0 }
}
output "lex_bots_detect_sentiment" {
  description = "Map of detect_sentiment values across all lex_bots, keyed the same as var.lex_bots"
  value       = { for k, v in aws_lex_bot.lex_bots : k => v.detect_sentiment if v.detect_sentiment != null }
}
output "lex_bots_enable_model_improvements" {
  description = "Map of enable_model_improvements values across all lex_bots, keyed the same as var.lex_bots"
  value       = { for k, v in aws_lex_bot.lex_bots : k => v.enable_model_improvements if v.enable_model_improvements != null }
}
output "lex_bots_failure_reason" {
  description = "Map of failure_reason values across all lex_bots, keyed the same as var.lex_bots"
  value       = { for k, v in aws_lex_bot.lex_bots : k => v.failure_reason if v.failure_reason != null && length(v.failure_reason) > 0 }
}
output "lex_bots_idle_session_ttl_in_seconds" {
  description = "Map of idle_session_ttl_in_seconds values across all lex_bots, keyed the same as var.lex_bots"
  value       = { for k, v in aws_lex_bot.lex_bots : k => v.idle_session_ttl_in_seconds if v.idle_session_ttl_in_seconds != null }
}
output "lex_bots_intent" {
  description = "Map of intent values across all lex_bots, keyed the same as var.lex_bots"
  value       = { for k, v in aws_lex_bot.lex_bots : k => v.intent if v.intent != null && length(v.intent) > 0 }
}
output "lex_bots_last_updated_date" {
  description = "Map of last_updated_date values across all lex_bots, keyed the same as var.lex_bots"
  value       = { for k, v in aws_lex_bot.lex_bots : k => v.last_updated_date if v.last_updated_date != null && length(v.last_updated_date) > 0 }
}
output "lex_bots_locale" {
  description = "Map of locale values across all lex_bots, keyed the same as var.lex_bots"
  value       = { for k, v in aws_lex_bot.lex_bots : k => v.locale if v.locale != null && length(v.locale) > 0 }
}
output "lex_bots_name" {
  description = "Map of name values across all lex_bots, keyed the same as var.lex_bots"
  value       = { for k, v in aws_lex_bot.lex_bots : k => v.name if v.name != null && length(v.name) > 0 }
}
output "lex_bots_nlu_intent_confidence_threshold" {
  description = "Map of nlu_intent_confidence_threshold values across all lex_bots, keyed the same as var.lex_bots"
  value       = { for k, v in aws_lex_bot.lex_bots : k => v.nlu_intent_confidence_threshold if v.nlu_intent_confidence_threshold != null }
}
output "lex_bots_process_behavior" {
  description = "Map of process_behavior values across all lex_bots, keyed the same as var.lex_bots"
  value       = { for k, v in aws_lex_bot.lex_bots : k => v.process_behavior if v.process_behavior != null && length(v.process_behavior) > 0 }
}
output "lex_bots_region" {
  description = "Map of region values across all lex_bots, keyed the same as var.lex_bots"
  value       = { for k, v in aws_lex_bot.lex_bots : k => v.region if v.region != null && length(v.region) > 0 }
}
output "lex_bots_status" {
  description = "Map of status values across all lex_bots, keyed the same as var.lex_bots"
  value       = { for k, v in aws_lex_bot.lex_bots : k => v.status if v.status != null && length(v.status) > 0 }
}
output "lex_bots_version" {
  description = "Map of version values across all lex_bots, keyed the same as var.lex_bots"
  value       = { for k, v in aws_lex_bot.lex_bots : k => v.version if v.version != null && length(v.version) > 0 }
}
output "lex_bots_voice_id" {
  description = "Map of voice_id values across all lex_bots, keyed the same as var.lex_bots"
  value       = { for k, v in aws_lex_bot.lex_bots : k => v.voice_id if v.voice_id != null && length(v.voice_id) > 0 }
}

