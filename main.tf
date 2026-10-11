resource "google_dialogflow_cx_page" "dialogflow_cx_pages" {
  for_each = var.dialogflow_cx_pages

  display_name            = each.value.display_name
  deletion_policy         = each.value.deletion_policy
  language_code           = each.value.language_code
  parent                  = each.value.parent
  transition_route_groups = each.value.transition_route_groups

  dynamic "advanced_settings" {
    for_each = each.value.advanced_settings != null ? [each.value.advanced_settings] : []
    content {
      dynamic "dtmf_settings" {
        for_each = advanced_settings.value.dtmf_settings != null ? [advanced_settings.value.dtmf_settings] : []
        content {
          enabled      = dtmf_settings.value.enabled
          finish_digit = dtmf_settings.value.finish_digit
          max_digits   = dtmf_settings.value.max_digits
        }
      }
    }
  }

  dynamic "entry_fulfillment" {
    for_each = each.value.entry_fulfillment != null ? [each.value.entry_fulfillment] : []
    content {
      dynamic "conditional_cases" {
        for_each = entry_fulfillment.value.conditional_cases != null ? entry_fulfillment.value.conditional_cases : []
        content {
          cases = conditional_cases.value.cases
        }
      }
      dynamic "messages" {
        for_each = entry_fulfillment.value.messages != null ? entry_fulfillment.value.messages : []
        content {
          channel = messages.value.channel
          dynamic "conversation_success" {
            for_each = messages.value.conversation_success != null ? [messages.value.conversation_success] : []
            content {
              metadata = conversation_success.value.metadata
            }
          }
          dynamic "live_agent_handoff" {
            for_each = messages.value.live_agent_handoff != null ? [messages.value.live_agent_handoff] : []
            content {
              metadata = live_agent_handoff.value.metadata
            }
          }
          dynamic "output_audio_text" {
            for_each = messages.value.output_audio_text != null ? [messages.value.output_audio_text] : []
            content {
              ssml = output_audio_text.value.ssml
              text = output_audio_text.value.text
            }
          }
          payload = messages.value.payload
          dynamic "play_audio" {
            for_each = messages.value.play_audio != null ? [messages.value.play_audio] : []
            content {
              audio_uri = play_audio.value.audio_uri
            }
          }
          dynamic "telephony_transfer_call" {
            for_each = messages.value.telephony_transfer_call != null ? [messages.value.telephony_transfer_call] : []
            content {
              phone_number = telephony_transfer_call.value.phone_number
            }
          }
          dynamic "text" {
            for_each = messages.value.text != null ? [messages.value.text] : []
            content {
              text = text.value.text
            }
          }
        }
      }
      return_partial_responses = entry_fulfillment.value.return_partial_responses
      dynamic "set_parameter_actions" {
        for_each = entry_fulfillment.value.set_parameter_actions != null ? entry_fulfillment.value.set_parameter_actions : []
        content {
          parameter = set_parameter_actions.value.parameter
          value     = set_parameter_actions.value.value
        }
      }
      tag     = entry_fulfillment.value.tag
      webhook = entry_fulfillment.value.webhook
    }
  }

  dynamic "event_handlers" {
    for_each = each.value.event_handlers != null ? each.value.event_handlers : []
    content {
      event       = event_handlers.value.event
      target_flow = event_handlers.value.target_flow
      target_page = event_handlers.value.target_page
      dynamic "trigger_fulfillment" {
        for_each = event_handlers.value.trigger_fulfillment != null ? [event_handlers.value.trigger_fulfillment] : []
        content {
          dynamic "conditional_cases" {
            for_each = trigger_fulfillment.value.conditional_cases != null ? trigger_fulfillment.value.conditional_cases : []
            content {
              cases = conditional_cases.value.cases
            }
          }
          dynamic "messages" {
            for_each = trigger_fulfillment.value.messages != null ? trigger_fulfillment.value.messages : []
            content {
              channel = messages.value.channel
              dynamic "conversation_success" {
                for_each = messages.value.conversation_success != null ? [messages.value.conversation_success] : []
                content {
                  metadata = conversation_success.value.metadata
                }
              }
              dynamic "live_agent_handoff" {
                for_each = messages.value.live_agent_handoff != null ? [messages.value.live_agent_handoff] : []
                content {
                  metadata = live_agent_handoff.value.metadata
                }
              }
              dynamic "output_audio_text" {
                for_each = messages.value.output_audio_text != null ? [messages.value.output_audio_text] : []
                content {
                  ssml = output_audio_text.value.ssml
                  text = output_audio_text.value.text
                }
              }
              payload = messages.value.payload
              dynamic "play_audio" {
                for_each = messages.value.play_audio != null ? [messages.value.play_audio] : []
                content {
                  audio_uri = play_audio.value.audio_uri
                }
              }
              dynamic "telephony_transfer_call" {
                for_each = messages.value.telephony_transfer_call != null ? [messages.value.telephony_transfer_call] : []
                content {
                  phone_number = telephony_transfer_call.value.phone_number
                }
              }
              dynamic "text" {
                for_each = messages.value.text != null ? [messages.value.text] : []
                content {
                  text = text.value.text
                }
              }
            }
          }
          return_partial_responses = trigger_fulfillment.value.return_partial_responses
          dynamic "set_parameter_actions" {
            for_each = trigger_fulfillment.value.set_parameter_actions != null ? trigger_fulfillment.value.set_parameter_actions : []
            content {
              parameter = set_parameter_actions.value.parameter
              value     = set_parameter_actions.value.value
            }
          }
          tag     = trigger_fulfillment.value.tag
          webhook = trigger_fulfillment.value.webhook
        }
      }
    }
  }

  dynamic "form" {
    for_each = each.value.form != null ? [each.value.form] : []
    content {
      dynamic "parameters" {
        for_each = form.value.parameters != null ? form.value.parameters : []
        content {
          dynamic "advanced_settings" {
            for_each = parameters.value.advanced_settings != null ? [parameters.value.advanced_settings] : []
            content {
              dynamic "dtmf_settings" {
                for_each = advanced_settings.value.dtmf_settings != null ? [advanced_settings.value.dtmf_settings] : []
                content {
                  enabled      = dtmf_settings.value.enabled
                  finish_digit = dtmf_settings.value.finish_digit
                  max_digits   = dtmf_settings.value.max_digits
                }
              }
            }
          }
          default_value = parameters.value.default_value
          display_name  = parameters.value.display_name
          entity_type   = parameters.value.entity_type
          dynamic "fill_behavior" {
            for_each = parameters.value.fill_behavior != null ? [parameters.value.fill_behavior] : []
            content {
              dynamic "initial_prompt_fulfillment" {
                for_each = fill_behavior.value.initial_prompt_fulfillment != null ? [fill_behavior.value.initial_prompt_fulfillment] : []
                content {
                  dynamic "conditional_cases" {
                    for_each = initial_prompt_fulfillment.value.conditional_cases != null ? initial_prompt_fulfillment.value.conditional_cases : []
                    content {
                      cases = conditional_cases.value.cases
                    }
                  }
                  dynamic "messages" {
                    for_each = initial_prompt_fulfillment.value.messages != null ? initial_prompt_fulfillment.value.messages : []
                    content {
                      channel = messages.value.channel
                      dynamic "conversation_success" {
                        for_each = messages.value.conversation_success != null ? [messages.value.conversation_success] : []
                        content {
                          metadata = conversation_success.value.metadata
                        }
                      }
                      dynamic "live_agent_handoff" {
                        for_each = messages.value.live_agent_handoff != null ? [messages.value.live_agent_handoff] : []
                        content {
                          metadata = live_agent_handoff.value.metadata
                        }
                      }
                      dynamic "output_audio_text" {
                        for_each = messages.value.output_audio_text != null ? [messages.value.output_audio_text] : []
                        content {
                          ssml = output_audio_text.value.ssml
                          text = output_audio_text.value.text
                        }
                      }
                      payload = messages.value.payload
                      dynamic "play_audio" {
                        for_each = messages.value.play_audio != null ? [messages.value.play_audio] : []
                        content {
                          audio_uri = play_audio.value.audio_uri
                        }
                      }
                      dynamic "telephony_transfer_call" {
                        for_each = messages.value.telephony_transfer_call != null ? [messages.value.telephony_transfer_call] : []
                        content {
                          phone_number = telephony_transfer_call.value.phone_number
                        }
                      }
                      dynamic "text" {
                        for_each = messages.value.text != null ? [messages.value.text] : []
                        content {
                          text = text.value.text
                        }
                      }
                    }
                  }
                  return_partial_responses = initial_prompt_fulfillment.value.return_partial_responses
                  dynamic "set_parameter_actions" {
                    for_each = initial_prompt_fulfillment.value.set_parameter_actions != null ? initial_prompt_fulfillment.value.set_parameter_actions : []
                    content {
                      parameter = set_parameter_actions.value.parameter
                      value     = set_parameter_actions.value.value
                    }
                  }
                  tag     = initial_prompt_fulfillment.value.tag
                  webhook = initial_prompt_fulfillment.value.webhook
                }
              }
              dynamic "reprompt_event_handlers" {
                for_each = fill_behavior.value.reprompt_event_handlers != null ? fill_behavior.value.reprompt_event_handlers : []
                content {
                  event       = reprompt_event_handlers.value.event
                  target_flow = reprompt_event_handlers.value.target_flow
                  target_page = reprompt_event_handlers.value.target_page
                  dynamic "trigger_fulfillment" {
                    for_each = reprompt_event_handlers.value.trigger_fulfillment != null ? [reprompt_event_handlers.value.trigger_fulfillment] : []
                    content {
                      dynamic "conditional_cases" {
                        for_each = trigger_fulfillment.value.conditional_cases != null ? trigger_fulfillment.value.conditional_cases : []
                        content {
                          cases = conditional_cases.value.cases
                        }
                      }
                      dynamic "messages" {
                        for_each = trigger_fulfillment.value.messages != null ? trigger_fulfillment.value.messages : []
                        content {
                          channel = messages.value.channel
                          dynamic "conversation_success" {
                            for_each = messages.value.conversation_success != null ? [messages.value.conversation_success] : []
                            content {
                              metadata = conversation_success.value.metadata
                            }
                          }
                          dynamic "live_agent_handoff" {
                            for_each = messages.value.live_agent_handoff != null ? [messages.value.live_agent_handoff] : []
                            content {
                              metadata = live_agent_handoff.value.metadata
                            }
                          }
                          dynamic "output_audio_text" {
                            for_each = messages.value.output_audio_text != null ? [messages.value.output_audio_text] : []
                            content {
                              ssml = output_audio_text.value.ssml
                              text = output_audio_text.value.text
                            }
                          }
                          payload = messages.value.payload
                          dynamic "play_audio" {
                            for_each = messages.value.play_audio != null ? [messages.value.play_audio] : []
                            content {
                              audio_uri = play_audio.value.audio_uri
                            }
                          }
                          dynamic "telephony_transfer_call" {
                            for_each = messages.value.telephony_transfer_call != null ? [messages.value.telephony_transfer_call] : []
                            content {
                              phone_number = telephony_transfer_call.value.phone_number
                            }
                          }
                          dynamic "text" {
                            for_each = messages.value.text != null ? [messages.value.text] : []
                            content {
                              text = text.value.text
                            }
                          }
                        }
                      }
                      return_partial_responses = trigger_fulfillment.value.return_partial_responses
                      dynamic "set_parameter_actions" {
                        for_each = trigger_fulfillment.value.set_parameter_actions != null ? trigger_fulfillment.value.set_parameter_actions : []
                        content {
                          parameter = set_parameter_actions.value.parameter
                          value     = set_parameter_actions.value.value
                        }
                      }
                      tag     = trigger_fulfillment.value.tag
                      webhook = trigger_fulfillment.value.webhook
                    }
                  }
                }
              }
            }
          }
          is_list  = parameters.value.is_list
          redact   = parameters.value.redact
          required = parameters.value.required
        }
      }
    }
  }

  dynamic "knowledge_connector_settings" {
    for_each = each.value.knowledge_connector_settings != null ? [each.value.knowledge_connector_settings] : []
    content {
      dynamic "data_store_connections" {
        for_each = knowledge_connector_settings.value.data_store_connections != null ? knowledge_connector_settings.value.data_store_connections : []
        content {
          data_store               = data_store_connections.value.data_store
          data_store_type          = data_store_connections.value.data_store_type
          document_processing_mode = data_store_connections.value.document_processing_mode
        }
      }
      enabled     = knowledge_connector_settings.value.enabled
      target_flow = knowledge_connector_settings.value.target_flow
      target_page = knowledge_connector_settings.value.target_page
      dynamic "trigger_fulfillment" {
        for_each = knowledge_connector_settings.value.trigger_fulfillment != null ? [knowledge_connector_settings.value.trigger_fulfillment] : []
        content {
          dynamic "advanced_settings" {
            for_each = trigger_fulfillment.value.advanced_settings != null ? [trigger_fulfillment.value.advanced_settings] : []
            content {
              dynamic "dtmf_settings" {
                for_each = advanced_settings.value.dtmf_settings != null ? [advanced_settings.value.dtmf_settings] : []
                content {
                  enabled                      = dtmf_settings.value.enabled
                  endpointing_timeout_duration = dtmf_settings.value.endpointing_timeout_duration
                  finish_digit                 = dtmf_settings.value.finish_digit
                  interdigit_timeout_duration  = dtmf_settings.value.interdigit_timeout_duration
                  max_digits                   = dtmf_settings.value.max_digits
                }
              }
              dynamic "logging_settings" {
                for_each = advanced_settings.value.logging_settings != null ? [advanced_settings.value.logging_settings] : []
                content {
                  enable_consent_based_redaction = logging_settings.value.enable_consent_based_redaction
                  enable_interaction_logging     = logging_settings.value.enable_interaction_logging
                  enable_stackdriver_logging     = logging_settings.value.enable_stackdriver_logging
                }
              }
              dynamic "speech_settings" {
                for_each = advanced_settings.value.speech_settings != null ? [advanced_settings.value.speech_settings] : []
                content {
                  endpointer_sensitivity        = speech_settings.value.endpointer_sensitivity
                  models                        = speech_settings.value.models
                  no_speech_timeout             = speech_settings.value.no_speech_timeout
                  use_timeout_based_endpointing = speech_settings.value.use_timeout_based_endpointing
                }
              }
            }
          }
          dynamic "conditional_cases" {
            for_each = trigger_fulfillment.value.conditional_cases != null ? trigger_fulfillment.value.conditional_cases : []
            content {
              cases = conditional_cases.value.cases
            }
          }
          enable_generative_fallback = trigger_fulfillment.value.enable_generative_fallback
          dynamic "messages" {
            for_each = trigger_fulfillment.value.messages != null ? trigger_fulfillment.value.messages : []
            content {
              channel = messages.value.channel
              dynamic "conversation_success" {
                for_each = messages.value.conversation_success != null ? [messages.value.conversation_success] : []
                content {
                  metadata = conversation_success.value.metadata
                }
              }
              dynamic "knowledge_info_card" {
                for_each = messages.value.knowledge_info_card != null ? [messages.value.knowledge_info_card] : []
                content {
                }
              }
              dynamic "live_agent_handoff" {
                for_each = messages.value.live_agent_handoff != null ? [messages.value.live_agent_handoff] : []
                content {
                  metadata = live_agent_handoff.value.metadata
                }
              }
              dynamic "output_audio_text" {
                for_each = messages.value.output_audio_text != null ? [messages.value.output_audio_text] : []
                content {
                  ssml = output_audio_text.value.ssml
                  text = output_audio_text.value.text
                }
              }
              payload = messages.value.payload
              dynamic "play_audio" {
                for_each = messages.value.play_audio != null ? [messages.value.play_audio] : []
                content {
                  audio_uri = play_audio.value.audio_uri
                }
              }
              dynamic "telephony_transfer_call" {
                for_each = messages.value.telephony_transfer_call != null ? [messages.value.telephony_transfer_call] : []
                content {
                  phone_number = telephony_transfer_call.value.phone_number
                }
              }
              dynamic "text" {
                for_each = messages.value.text != null ? [messages.value.text] : []
                content {
                  text = text.value.text
                }
              }
            }
          }
          return_partial_responses = trigger_fulfillment.value.return_partial_responses
          dynamic "set_parameter_actions" {
            for_each = trigger_fulfillment.value.set_parameter_actions != null ? trigger_fulfillment.value.set_parameter_actions : []
            content {
              parameter = set_parameter_actions.value.parameter
              value     = set_parameter_actions.value.value
            }
          }
          tag     = trigger_fulfillment.value.tag
          webhook = trigger_fulfillment.value.webhook
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }

  dynamic "transition_routes" {
    for_each = each.value.transition_routes != null ? each.value.transition_routes : []
    content {
      condition   = transition_routes.value.condition
      intent      = transition_routes.value.intent
      target_flow = transition_routes.value.target_flow
      target_page = transition_routes.value.target_page
      dynamic "trigger_fulfillment" {
        for_each = transition_routes.value.trigger_fulfillment != null ? [transition_routes.value.trigger_fulfillment] : []
        content {
          dynamic "conditional_cases" {
            for_each = trigger_fulfillment.value.conditional_cases != null ? trigger_fulfillment.value.conditional_cases : []
            content {
              cases = conditional_cases.value.cases
            }
          }
          dynamic "messages" {
            for_each = trigger_fulfillment.value.messages != null ? trigger_fulfillment.value.messages : []
            content {
              channel = messages.value.channel
              dynamic "conversation_success" {
                for_each = messages.value.conversation_success != null ? [messages.value.conversation_success] : []
                content {
                  metadata = conversation_success.value.metadata
                }
              }
              dynamic "live_agent_handoff" {
                for_each = messages.value.live_agent_handoff != null ? [messages.value.live_agent_handoff] : []
                content {
                  metadata = live_agent_handoff.value.metadata
                }
              }
              dynamic "output_audio_text" {
                for_each = messages.value.output_audio_text != null ? [messages.value.output_audio_text] : []
                content {
                  ssml = output_audio_text.value.ssml
                  text = output_audio_text.value.text
                }
              }
              payload = messages.value.payload
              dynamic "play_audio" {
                for_each = messages.value.play_audio != null ? [messages.value.play_audio] : []
                content {
                  audio_uri = play_audio.value.audio_uri
                }
              }
              dynamic "telephony_transfer_call" {
                for_each = messages.value.telephony_transfer_call != null ? [messages.value.telephony_transfer_call] : []
                content {
                  phone_number = telephony_transfer_call.value.phone_number
                }
              }
              dynamic "text" {
                for_each = messages.value.text != null ? [messages.value.text] : []
                content {
                  text = text.value.text
                }
              }
            }
          }
          return_partial_responses = trigger_fulfillment.value.return_partial_responses
          dynamic "set_parameter_actions" {
            for_each = trigger_fulfillment.value.set_parameter_actions != null ? trigger_fulfillment.value.set_parameter_actions : []
            content {
              parameter = set_parameter_actions.value.parameter
              value     = set_parameter_actions.value.value
            }
          }
          tag     = trigger_fulfillment.value.tag
          webhook = trigger_fulfillment.value.webhook
        }
      }
    }
  }
}

