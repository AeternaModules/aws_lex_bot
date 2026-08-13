variable "lex_bots" {
  description = <<EOT
Map of lex_bots, attributes below
Required:
    - child_directed
    - name
    - abort_statement (block):
        - message (required, block):
            - content (required)
            - content_type (required)
            - group_number (optional)
        - response_card (optional)
    - intent (block):
        - intent_name (required)
        - intent_version (required)
Optional:
    - create_version
    - description
    - detect_sentiment
    - enable_model_improvements
    - idle_session_ttl_in_seconds
    - locale
    - nlu_intent_confidence_threshold
    - process_behavior
    - region
    - voice_id
    - clarification_prompt (block):
        - max_attempts (required)
        - message (required, block):
            - content (required)
            - content_type (required)
            - group_number (optional)
        - response_card (optional)
EOT

  type = map(object({
    child_directed                  = bool
    name                            = string
    create_version                  = optional(bool)
    description                     = optional(string)
    detect_sentiment                = optional(bool)
    enable_model_improvements       = optional(bool)
    idle_session_ttl_in_seconds     = optional(number)
    locale                          = optional(string)
    nlu_intent_confidence_threshold = optional(number)
    process_behavior                = optional(string)
    region                          = optional(string)
    voice_id                        = optional(string)
    abort_statement = object({
      message = list(object({
        content      = string
        content_type = string
        group_number = optional(number)
      }))
      response_card = optional(string)
    })
    intent = list(object({
      intent_name    = string
      intent_version = string
    }))
    clarification_prompt = optional(object({
      max_attempts = number
      message = list(object({
        content      = string
        content_type = string
        group_number = optional(number)
      }))
      response_card = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.lex_bots : (
        length(v.abort_statement.message) >= 1 && length(v.abort_statement.message) <= 15
      )
    ])
    error_message = "Each message list must contain between 1 and 15 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.lex_bots : (
        length(v.intent) >= 1 && length(v.intent) <= 250
      )
    ])
    error_message = "Each intent list must contain between 1 and 250 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.lex_bots : (
        v.clarification_prompt == null || (length(v.clarification_prompt.message) >= 1 && length(v.clarification_prompt.message) <= 15)
      )
    ])
    error_message = "Each message list must contain between 1 and 15 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.lex_bots : (
        v.idle_session_ttl_in_seconds == null || (v.idle_session_ttl_in_seconds >= 60 && v.idle_session_ttl_in_seconds <= 86400)
      )
    ])
    error_message = "must be between 60 and 86400"
  }
  validation {
    condition = alltrue([
      for k, v in var.lex_bots : (
        alltrue([for item in v.intent : ((length(item.intent_name) >= 1 && length(item.intent_name) <= 100) && (can(regex("^([A-Za-z]_?)+$", item.intent_name))))])
      )
    ])
    error_message = "all of: must be between 1 and 100 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.lex_bots : (
        alltrue([for item in v.intent : ((length(item.intent_version) >= 1 && length(item.intent_version) <= 64) && (can(regex("\\$LATEST|[0-9]+", item.intent_version))))])
      )
    ])
    error_message = "all of: must be between 1 and 64 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.lex_bots : (
        v.nlu_intent_confidence_threshold == null || (v.nlu_intent_confidence_threshold >= 0 && v.nlu_intent_confidence_threshold <= 1)
      )
    ])
    error_message = "must be between 0 and 1"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

