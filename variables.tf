variable "dialogflow_cx_pages" {
  description = <<EOT
Map of dialogflow_cx_pages, attributes below
Required:
    - display_name
Optional:
    - deletion_policy
    - language_code
    - parent
    - transition_route_groups
    - advanced_settings (block):
        - dtmf_settings (optional, block):
            - enabled (optional)
            - finish_digit (optional)
            - max_digits (optional)
    - entry_fulfillment (block):
        - conditional_cases (optional, block):
            - cases (optional)
        - messages (optional, block):
            - channel (optional)
            - conversation_success (optional, block):
                - metadata (optional)
            - live_agent_handoff (optional, block):
                - metadata (optional)
            - output_audio_text (optional, block):
                - ssml (optional)
                - text (optional)
            - payload (optional)
            - play_audio (optional, block):
                - audio_uri (required)
            - telephony_transfer_call (optional, block):
                - phone_number (required)
            - text (optional, block):
                - text (optional)
        - return_partial_responses (optional)
        - set_parameter_actions (optional, block):
            - parameter (optional)
            - value (optional)
        - tag (optional)
        - webhook (optional)
    - event_handlers (block):
        - event (optional)
        - target_flow (optional)
        - target_page (optional)
        - trigger_fulfillment (optional, block):
            - conditional_cases (optional, block):
                - cases (optional)
            - messages (optional, block):
                - channel (optional)
                - conversation_success (optional, block):
                    - metadata (optional)
                - live_agent_handoff (optional, block):
                    - metadata (optional)
                - output_audio_text (optional, block):
                    - ssml (optional)
                    - text (optional)
                - payload (optional)
                - play_audio (optional, block):
                    - audio_uri (required)
                - telephony_transfer_call (optional, block):
                    - phone_number (required)
                - text (optional, block):
                    - text (optional)
            - return_partial_responses (optional)
            - set_parameter_actions (optional, block):
                - parameter (optional)
                - value (optional)
            - tag (optional)
            - webhook (optional)
    - form (block):
        - parameters (optional, block):
            - advanced_settings (optional, block):
                - dtmf_settings (optional, block):
                    - enabled (optional)
                    - finish_digit (optional)
                    - max_digits (optional)
            - default_value (optional)
            - display_name (optional)
            - entity_type (optional)
            - fill_behavior (optional, block):
                - initial_prompt_fulfillment (optional, block):
                    - conditional_cases (optional, block):
                        - cases (optional)
                    - messages (optional, block):
                        - channel (optional)
                        - conversation_success (optional, block):
                            - metadata (optional)
                        - live_agent_handoff (optional, block):
                            - metadata (optional)
                        - output_audio_text (optional, block):
                            - ssml (optional)
                            - text (optional)
                        - payload (optional)
                        - play_audio (optional, block):
                            - audio_uri (required)
                        - telephony_transfer_call (optional, block):
                            - phone_number (required)
                        - text (optional, block):
                            - text (optional)
                    - return_partial_responses (optional)
                    - set_parameter_actions (optional, block):
                        - parameter (optional)
                        - value (optional)
                    - tag (optional)
                    - webhook (optional)
                - reprompt_event_handlers (optional, block):
                    - event (optional)
                    - target_flow (optional)
                    - target_page (optional)
                    - trigger_fulfillment (optional, block):
                        - conditional_cases (optional, block):
                            - cases (optional)
                        - messages (optional, block):
                            - channel (optional)
                            - conversation_success (optional, block):
                                - metadata (optional)
                            - live_agent_handoff (optional, block):
                                - metadata (optional)
                            - output_audio_text (optional, block):
                                - ssml (optional)
                                - text (optional)
                            - payload (optional)
                            - play_audio (optional, block):
                                - audio_uri (required)
                            - telephony_transfer_call (optional, block):
                                - phone_number (required)
                            - text (optional, block):
                                - text (optional)
                        - return_partial_responses (optional)
                        - set_parameter_actions (optional, block):
                            - parameter (optional)
                            - value (optional)
                        - tag (optional)
                        - webhook (optional)
            - is_list (optional)
            - redact (optional)
            - required (optional)
    - knowledge_connector_settings (block):
        - data_store_connections (optional, block):
            - data_store (optional)
            - data_store_type (optional)
            - document_processing_mode (optional)
        - enabled (optional)
        - target_flow (optional)
        - target_page (optional)
        - trigger_fulfillment (optional, block):
            - advanced_settings (optional, block):
                - dtmf_settings (optional, block):
                    - enabled (optional)
                    - endpointing_timeout_duration (optional)
                    - finish_digit (optional)
                    - interdigit_timeout_duration (optional)
                    - max_digits (optional)
                - logging_settings (optional, block):
                    - enable_consent_based_redaction (optional)
                    - enable_interaction_logging (optional)
                    - enable_stackdriver_logging (optional)
                - speech_settings (optional, block):
                    - endpointer_sensitivity (optional)
                    - models (optional)
                    - no_speech_timeout (optional)
                    - use_timeout_based_endpointing (optional)
            - conditional_cases (optional, block):
                - cases (optional)
            - enable_generative_fallback (optional)
            - messages (optional, block):
                - channel (optional)
                - conversation_success (optional, block):
                    - metadata (optional)
                - knowledge_info_card (optional, block):
                - live_agent_handoff (optional, block):
                    - metadata (optional)
                - output_audio_text (optional, block):
                    - ssml (optional)
                    - text (optional)
                - payload (optional)
                - play_audio (optional, block):
                    - audio_uri (required)
                - telephony_transfer_call (optional, block):
                    - phone_number (required)
                - text (optional, block):
                    - text (optional)
            - return_partial_responses (optional)
            - set_parameter_actions (optional, block):
                - parameter (optional)
                - value (optional)
            - tag (optional)
            - webhook (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - transition_routes (block):
        - condition (optional)
        - intent (optional)
        - target_flow (optional)
        - target_page (optional)
        - trigger_fulfillment (optional, block):
            - conditional_cases (optional, block):
                - cases (optional)
            - messages (optional, block):
                - channel (optional)
                - conversation_success (optional, block):
                    - metadata (optional)
                - live_agent_handoff (optional, block):
                    - metadata (optional)
                - output_audio_text (optional, block):
                    - ssml (optional)
                    - text (optional)
                - payload (optional)
                - play_audio (optional, block):
                    - audio_uri (required)
                - telephony_transfer_call (optional, block):
                    - phone_number (required)
                - text (optional, block):
                    - text (optional)
            - return_partial_responses (optional)
            - set_parameter_actions (optional, block):
                - parameter (optional)
                - value (optional)
            - tag (optional)
            - webhook (optional)
EOT

  type = map(object({
    display_name            = string
    deletion_policy         = optional(string)
    language_code           = optional(string)
    parent                  = optional(string)
    transition_route_groups = optional(list(string))
    advanced_settings = optional(object({
      dtmf_settings = optional(object({
        enabled      = optional(bool)
        finish_digit = optional(string)
        max_digits   = optional(number)
      }))
    }))
    entry_fulfillment = optional(object({
      conditional_cases = optional(list(object({
        cases = optional(string)
      })))
      messages = optional(list(object({
        channel = optional(string)
        conversation_success = optional(object({
          metadata = optional(string)
        }))
        live_agent_handoff = optional(object({
          metadata = optional(string)
        }))
        output_audio_text = optional(object({
          ssml = optional(string)
          text = optional(string)
        }))
        payload = optional(string)
        play_audio = optional(object({
          audio_uri = string
        }))
        telephony_transfer_call = optional(object({
          phone_number = string
        }))
        text = optional(object({
          text = optional(list(string))
        }))
      })))
      return_partial_responses = optional(bool)
      set_parameter_actions = optional(list(object({
        parameter = optional(string)
        value     = optional(string)
      })))
      tag     = optional(string)
      webhook = optional(string)
    }))
    event_handlers = optional(list(object({
      event       = optional(string)
      target_flow = optional(string)
      target_page = optional(string)
      trigger_fulfillment = optional(object({
        conditional_cases = optional(list(object({
          cases = optional(string)
        })))
        messages = optional(list(object({
          channel = optional(string)
          conversation_success = optional(object({
            metadata = optional(string)
          }))
          live_agent_handoff = optional(object({
            metadata = optional(string)
          }))
          output_audio_text = optional(object({
            ssml = optional(string)
            text = optional(string)
          }))
          payload = optional(string)
          play_audio = optional(object({
            audio_uri = string
          }))
          telephony_transfer_call = optional(object({
            phone_number = string
          }))
          text = optional(object({
            text = optional(list(string))
          }))
        })))
        return_partial_responses = optional(bool)
        set_parameter_actions = optional(list(object({
          parameter = optional(string)
          value     = optional(string)
        })))
        tag     = optional(string)
        webhook = optional(string)
      }))
    })))
    form = optional(object({
      parameters = optional(list(object({
        advanced_settings = optional(object({
          dtmf_settings = optional(object({
            enabled      = optional(bool)
            finish_digit = optional(string)
            max_digits   = optional(number)
          }))
        }))
        default_value = optional(string)
        display_name  = optional(string)
        entity_type   = optional(string)
        fill_behavior = optional(object({
          initial_prompt_fulfillment = optional(object({
            conditional_cases = optional(list(object({
              cases = optional(string)
            })))
            messages = optional(list(object({
              channel = optional(string)
              conversation_success = optional(object({
                metadata = optional(string)
              }))
              live_agent_handoff = optional(object({
                metadata = optional(string)
              }))
              output_audio_text = optional(object({
                ssml = optional(string)
                text = optional(string)
              }))
              payload = optional(string)
              play_audio = optional(object({
                audio_uri = string
              }))
              telephony_transfer_call = optional(object({
                phone_number = string
              }))
              text = optional(object({
                text = optional(list(string))
              }))
            })))
            return_partial_responses = optional(bool)
            set_parameter_actions = optional(list(object({
              parameter = optional(string)
              value     = optional(string)
            })))
            tag     = optional(string)
            webhook = optional(string)
          }))
          reprompt_event_handlers = optional(list(object({
            event       = optional(string)
            target_flow = optional(string)
            target_page = optional(string)
            trigger_fulfillment = optional(object({
              conditional_cases = optional(list(object({
                cases = optional(string)
              })))
              messages = optional(list(object({
                channel = optional(string)
                conversation_success = optional(object({
                  metadata = optional(string)
                }))
                live_agent_handoff = optional(object({
                  metadata = optional(string)
                }))
                output_audio_text = optional(object({
                  ssml = optional(string)
                  text = optional(string)
                }))
                payload = optional(string)
                play_audio = optional(object({
                  audio_uri = string
                }))
                telephony_transfer_call = optional(object({
                  phone_number = string
                }))
                text = optional(object({
                  text = optional(list(string))
                }))
              })))
              return_partial_responses = optional(bool)
              set_parameter_actions = optional(list(object({
                parameter = optional(string)
                value     = optional(string)
              })))
              tag     = optional(string)
              webhook = optional(string)
            }))
          })))
        }))
        is_list  = optional(bool)
        redact   = optional(bool)
        required = optional(bool)
      })))
    }))
    knowledge_connector_settings = optional(object({
      data_store_connections = optional(list(object({
        data_store               = optional(string)
        data_store_type          = optional(string)
        document_processing_mode = optional(string)
      })))
      enabled     = optional(bool)
      target_flow = optional(string)
      target_page = optional(string)
      trigger_fulfillment = optional(object({
        advanced_settings = optional(object({
          dtmf_settings = optional(object({
            enabled                      = optional(bool)
            endpointing_timeout_duration = optional(string)
            finish_digit                 = optional(string)
            interdigit_timeout_duration  = optional(string)
            max_digits                   = optional(number)
          }))
          logging_settings = optional(object({
            enable_consent_based_redaction = optional(bool)
            enable_interaction_logging     = optional(bool)
            enable_stackdriver_logging     = optional(bool)
          }))
          speech_settings = optional(object({
            endpointer_sensitivity        = optional(number)
            models                        = optional(map(string))
            no_speech_timeout             = optional(string)
            use_timeout_based_endpointing = optional(bool)
          }))
        }))
        conditional_cases = optional(list(object({
          cases = optional(string)
        })))
        enable_generative_fallback = optional(bool)
        messages = optional(list(object({
          channel = optional(string)
          conversation_success = optional(object({
            metadata = optional(string)
          }))
          knowledge_info_card = optional(object({
          }))
          live_agent_handoff = optional(object({
            metadata = optional(string)
          }))
          output_audio_text = optional(object({
            ssml = optional(string)
            text = optional(string)
          }))
          payload = optional(string)
          play_audio = optional(object({
            audio_uri = string
          }))
          telephony_transfer_call = optional(object({
            phone_number = string
          }))
          text = optional(object({
            text = optional(list(string))
          }))
        })))
        return_partial_responses = optional(bool)
        set_parameter_actions = optional(list(object({
          parameter = optional(string)
          value     = optional(string)
        })))
        tag     = optional(string)
        webhook = optional(string)
      }))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    transition_routes = optional(list(object({
      condition   = optional(string)
      intent      = optional(string)
      target_flow = optional(string)
      target_page = optional(string)
      trigger_fulfillment = optional(object({
        conditional_cases = optional(list(object({
          cases = optional(string)
        })))
        messages = optional(list(object({
          channel = optional(string)
          conversation_success = optional(object({
            metadata = optional(string)
          }))
          live_agent_handoff = optional(object({
            metadata = optional(string)
          }))
          output_audio_text = optional(object({
            ssml = optional(string)
            text = optional(string)
          }))
          payload = optional(string)
          play_audio = optional(object({
            audio_uri = string
          }))
          telephony_transfer_call = optional(object({
            phone_number = string
          }))
          text = optional(object({
            text = optional(list(string))
          }))
        })))
        return_partial_responses = optional(bool)
        set_parameter_actions = optional(list(object({
          parameter = optional(string)
          value     = optional(string)
        })))
        tag     = optional(string)
        webhook = optional(string)
      }))
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.dialogflow_cx_pages : (
        length(v.display_name) >= 0 && length(v.display_name) <= 64
      )
    ])
    error_message = "must be between 0 and 64 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.dialogflow_cx_pages : (
        v.entry_fulfillment == null || (v.entry_fulfillment.conditional_cases == null || alltrue([for item in v.entry_fulfillment.conditional_cases : (item.cases == null || (can(jsondecode(item.cases))))]))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.dialogflow_cx_pages : (
        v.entry_fulfillment == null || (v.entry_fulfillment.messages == null || alltrue([for item in v.entry_fulfillment.messages : (item.conversation_success == null || (item.conversation_success.metadata == null || (can(jsondecode(item.conversation_success.metadata)))))]))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.dialogflow_cx_pages : (
        v.entry_fulfillment == null || (v.entry_fulfillment.messages == null || alltrue([for item in v.entry_fulfillment.messages : (item.live_agent_handoff == null || (item.live_agent_handoff.metadata == null || (can(jsondecode(item.live_agent_handoff.metadata)))))]))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.dialogflow_cx_pages : (
        v.entry_fulfillment == null || (v.entry_fulfillment.messages == null || alltrue([for item in v.entry_fulfillment.messages : (item.payload == null || (can(jsondecode(item.payload))))]))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.dialogflow_cx_pages : (
        v.entry_fulfillment == null || (v.entry_fulfillment.set_parameter_actions == null || alltrue([for item in v.entry_fulfillment.set_parameter_actions : (item.value == null || (can(jsondecode(item.value))))]))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.dialogflow_cx_pages : (
        v.event_handlers == null || alltrue([for item in v.event_handlers : (item.trigger_fulfillment == null || (item.trigger_fulfillment.conditional_cases == null || alltrue([for item in item.trigger_fulfillment.conditional_cases : (item.cases == null || (can(jsondecode(item.cases))))])))])
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.dialogflow_cx_pages : (
        v.event_handlers == null || alltrue([for item in v.event_handlers : (item.trigger_fulfillment == null || (item.trigger_fulfillment.messages == null || alltrue([for item in item.trigger_fulfillment.messages : (item.conversation_success == null || (item.conversation_success.metadata == null || (can(jsondecode(item.conversation_success.metadata)))))])))])
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.dialogflow_cx_pages : (
        v.event_handlers == null || alltrue([for item in v.event_handlers : (item.trigger_fulfillment == null || (item.trigger_fulfillment.messages == null || alltrue([for item in item.trigger_fulfillment.messages : (item.live_agent_handoff == null || (item.live_agent_handoff.metadata == null || (can(jsondecode(item.live_agent_handoff.metadata)))))])))])
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.dialogflow_cx_pages : (
        v.event_handlers == null || alltrue([for item in v.event_handlers : (item.trigger_fulfillment == null || (item.trigger_fulfillment.messages == null || alltrue([for item in item.trigger_fulfillment.messages : (item.payload == null || (can(jsondecode(item.payload))))])))])
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.dialogflow_cx_pages : (
        v.event_handlers == null || alltrue([for item in v.event_handlers : (item.trigger_fulfillment == null || (item.trigger_fulfillment.set_parameter_actions == null || alltrue([for item in item.trigger_fulfillment.set_parameter_actions : (item.value == null || (can(jsondecode(item.value))))])))])
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.dialogflow_cx_pages : (
        v.form == null || (v.form.parameters == null || alltrue([for item in v.form.parameters : (item.default_value == null || (can(jsondecode(item.default_value))))]))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.dialogflow_cx_pages : (
        v.form == null || (v.form.parameters == null || alltrue([for item in v.form.parameters : (item.fill_behavior == null || (item.fill_behavior.initial_prompt_fulfillment == null || (item.fill_behavior.initial_prompt_fulfillment.conditional_cases == null || alltrue([for item in item.fill_behavior.initial_prompt_fulfillment.conditional_cases : (item.cases == null || (can(jsondecode(item.cases))))]))))]))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.dialogflow_cx_pages : (
        v.form == null || (v.form.parameters == null || alltrue([for item in v.form.parameters : (item.fill_behavior == null || (item.fill_behavior.initial_prompt_fulfillment == null || (item.fill_behavior.initial_prompt_fulfillment.messages == null || alltrue([for item in item.fill_behavior.initial_prompt_fulfillment.messages : (item.conversation_success == null || (item.conversation_success.metadata == null || (can(jsondecode(item.conversation_success.metadata)))))]))))]))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.dialogflow_cx_pages : (
        v.form == null || (v.form.parameters == null || alltrue([for item in v.form.parameters : (item.fill_behavior == null || (item.fill_behavior.initial_prompt_fulfillment == null || (item.fill_behavior.initial_prompt_fulfillment.messages == null || alltrue([for item in item.fill_behavior.initial_prompt_fulfillment.messages : (item.live_agent_handoff == null || (item.live_agent_handoff.metadata == null || (can(jsondecode(item.live_agent_handoff.metadata)))))]))))]))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.dialogflow_cx_pages : (
        v.form == null || (v.form.parameters == null || alltrue([for item in v.form.parameters : (item.fill_behavior == null || (item.fill_behavior.initial_prompt_fulfillment == null || (item.fill_behavior.initial_prompt_fulfillment.messages == null || alltrue([for item in item.fill_behavior.initial_prompt_fulfillment.messages : (item.payload == null || (can(jsondecode(item.payload))))]))))]))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.dialogflow_cx_pages : (
        v.form == null || (v.form.parameters == null || alltrue([for item in v.form.parameters : (item.fill_behavior == null || (item.fill_behavior.initial_prompt_fulfillment == null || (item.fill_behavior.initial_prompt_fulfillment.set_parameter_actions == null || alltrue([for item in item.fill_behavior.initial_prompt_fulfillment.set_parameter_actions : (item.value == null || (can(jsondecode(item.value))))]))))]))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.dialogflow_cx_pages : (
        v.form == null || (v.form.parameters == null || alltrue([for item in v.form.parameters : (item.fill_behavior == null || (item.fill_behavior.reprompt_event_handlers == null || alltrue([for item in item.fill_behavior.reprompt_event_handlers : (item.trigger_fulfillment == null || (item.trigger_fulfillment.conditional_cases == null || alltrue([for item in item.trigger_fulfillment.conditional_cases : (item.cases == null || (can(jsondecode(item.cases))))])))])))]))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.dialogflow_cx_pages : (
        v.form == null || (v.form.parameters == null || alltrue([for item in v.form.parameters : (item.fill_behavior == null || (item.fill_behavior.reprompt_event_handlers == null || alltrue([for item in item.fill_behavior.reprompt_event_handlers : (item.trigger_fulfillment == null || (item.trigger_fulfillment.messages == null || alltrue([for item in item.trigger_fulfillment.messages : (item.conversation_success == null || (item.conversation_success.metadata == null || (can(jsondecode(item.conversation_success.metadata)))))])))])))]))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.dialogflow_cx_pages : (
        v.form == null || (v.form.parameters == null || alltrue([for item in v.form.parameters : (item.fill_behavior == null || (item.fill_behavior.reprompt_event_handlers == null || alltrue([for item in item.fill_behavior.reprompt_event_handlers : (item.trigger_fulfillment == null || (item.trigger_fulfillment.messages == null || alltrue([for item in item.trigger_fulfillment.messages : (item.live_agent_handoff == null || (item.live_agent_handoff.metadata == null || (can(jsondecode(item.live_agent_handoff.metadata)))))])))])))]))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.dialogflow_cx_pages : (
        v.form == null || (v.form.parameters == null || alltrue([for item in v.form.parameters : (item.fill_behavior == null || (item.fill_behavior.reprompt_event_handlers == null || alltrue([for item in item.fill_behavior.reprompt_event_handlers : (item.trigger_fulfillment == null || (item.trigger_fulfillment.messages == null || alltrue([for item in item.trigger_fulfillment.messages : (item.payload == null || (can(jsondecode(item.payload))))])))])))]))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.dialogflow_cx_pages : (
        v.form == null || (v.form.parameters == null || alltrue([for item in v.form.parameters : (item.fill_behavior == null || (item.fill_behavior.reprompt_event_handlers == null || alltrue([for item in item.fill_behavior.reprompt_event_handlers : (item.trigger_fulfillment == null || (item.trigger_fulfillment.set_parameter_actions == null || alltrue([for item in item.trigger_fulfillment.set_parameter_actions : (item.value == null || (can(jsondecode(item.value))))])))])))]))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.dialogflow_cx_pages : (
        v.knowledge_connector_settings == null || (v.knowledge_connector_settings.trigger_fulfillment == null || (v.knowledge_connector_settings.trigger_fulfillment.conditional_cases == null || alltrue([for item in v.knowledge_connector_settings.trigger_fulfillment.conditional_cases : (item.cases == null || (can(jsondecode(item.cases))))])))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.dialogflow_cx_pages : (
        v.knowledge_connector_settings == null || (v.knowledge_connector_settings.trigger_fulfillment == null || (v.knowledge_connector_settings.trigger_fulfillment.messages == null || alltrue([for item in v.knowledge_connector_settings.trigger_fulfillment.messages : (item.conversation_success == null || (item.conversation_success.metadata == null || (can(jsondecode(item.conversation_success.metadata)))))])))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.dialogflow_cx_pages : (
        v.knowledge_connector_settings == null || (v.knowledge_connector_settings.trigger_fulfillment == null || (v.knowledge_connector_settings.trigger_fulfillment.messages == null || alltrue([for item in v.knowledge_connector_settings.trigger_fulfillment.messages : (item.live_agent_handoff == null || (item.live_agent_handoff.metadata == null || (can(jsondecode(item.live_agent_handoff.metadata)))))])))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.dialogflow_cx_pages : (
        v.knowledge_connector_settings == null || (v.knowledge_connector_settings.trigger_fulfillment == null || (v.knowledge_connector_settings.trigger_fulfillment.messages == null || alltrue([for item in v.knowledge_connector_settings.trigger_fulfillment.messages : (item.payload == null || (can(jsondecode(item.payload))))])))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.dialogflow_cx_pages : (
        v.knowledge_connector_settings == null || (v.knowledge_connector_settings.trigger_fulfillment == null || (v.knowledge_connector_settings.trigger_fulfillment.set_parameter_actions == null || alltrue([for item in v.knowledge_connector_settings.trigger_fulfillment.set_parameter_actions : (item.value == null || (can(jsondecode(item.value))))])))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.dialogflow_cx_pages : (
        v.transition_routes == null || alltrue([for item in v.transition_routes : (item.trigger_fulfillment == null || (item.trigger_fulfillment.conditional_cases == null || alltrue([for item in item.trigger_fulfillment.conditional_cases : (item.cases == null || (can(jsondecode(item.cases))))])))])
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.dialogflow_cx_pages : (
        v.transition_routes == null || alltrue([for item in v.transition_routes : (item.trigger_fulfillment == null || (item.trigger_fulfillment.messages == null || alltrue([for item in item.trigger_fulfillment.messages : (item.conversation_success == null || (item.conversation_success.metadata == null || (can(jsondecode(item.conversation_success.metadata)))))])))])
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.dialogflow_cx_pages : (
        v.transition_routes == null || alltrue([for item in v.transition_routes : (item.trigger_fulfillment == null || (item.trigger_fulfillment.messages == null || alltrue([for item in item.trigger_fulfillment.messages : (item.live_agent_handoff == null || (item.live_agent_handoff.metadata == null || (can(jsondecode(item.live_agent_handoff.metadata)))))])))])
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.dialogflow_cx_pages : (
        v.transition_routes == null || alltrue([for item in v.transition_routes : (item.trigger_fulfillment == null || (item.trigger_fulfillment.messages == null || alltrue([for item in item.trigger_fulfillment.messages : (item.payload == null || (can(jsondecode(item.payload))))])))])
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.dialogflow_cx_pages : (
        v.transition_routes == null || alltrue([for item in v.transition_routes : (item.trigger_fulfillment == null || (item.trigger_fulfillment.set_parameter_actions == null || alltrue([for item in item.trigger_fulfillment.set_parameter_actions : (item.value == null || (can(jsondecode(item.value))))])))])
      )
    ])
    error_message = "must be valid JSON"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

