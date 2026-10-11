variable "batch_batch_job_pools_lookup" {
  description = <<EOT
Map of batch_batch_job_pools_lookup, attributes below
Optional:
    - batch_context_id
    - compartment_id
    - display_name
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    batch_context_id = optional(string)
    compartment_id   = optional(string)
    display_name     = optional(string)
    state            = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

